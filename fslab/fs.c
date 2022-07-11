/*
Filesystem Lab disigned and implemented by Liang Junkai,RUC
*/

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <fuse.h>
#include <errno.h>
#include "disk.h"

#define DIRMODE S_IFDIR|0755
#define REGMODE S_IFREG|0644

#define MAX_FILE_NUM 32768 // 1 block = 32768bit
#define I_BMAP_BASE 1 // inode bit map at block1
#define D_BMAP_BASE 2 // datablock bit map at block2&3
#define I_TAB_BASE  4 // inode table at block4
#define DR_BASE 516 // data region block 516 ~
#define ROOT_INUM 1 // root inode = 1
#define Inode_SIZE 64 //1block = 64inode    32k inode = 512block
#define Reg_SIZE 32 //1 register in dir is 32b
#define Inode_Per_Block 64
#define Reg_Per_Block 128
#define Ptr_Per_Block 2048
#define MAX_SIZE (Ptr_Per_Block*2+12)*BLOCK_SIZE
typedef struct Inode{
	mode_t mode; //file mode
	off_t size; // file size
	time_t atime; // access time
	time_t ctime; // create time
	time_t mtime; // modify time
	unsigned short block[14]; //12+2: block[i] store the blocknum -> short is enough
} Inode; // 4 + 8 + 8*3 + 2*14 = 64b

typedef struct Reg{
	unsigned short inodenum; //inode: 2-32767, 0 means default
	char name[30]; //file name
} Reg; // 2 + 30 = 32b

unsigned short Get_f_Inode() { //get the free inode    OK
	char *buf = malloc(BLOCK_SIZE);
	disk_read(I_BMAP_BASE, buf);

	unsigned char mask = 1<<2;
	char byte = buf[0];
	for(int i = 2; i < 8; i++, mask <<= 1) //0-7: 0 is not used/means no free; 1 is for root
		if( !(byte & mask) )
				return i;

	for(int i = 1; i < BLOCK_SIZE; i++) { //others
		byte = buf[i];
		mask = 1;
		for(int j = 0; j < 8; j++, mask <<= 1)
			if( !(byte & mask) )
				return 8*i+j;
	}
	return 0;
}

int W_BMAP(int num, int base) { //write to inode bit map or datablock bit map when delete(0) or make(1)    |OK
	char *buf = malloc(BLOCK_SIZE);

	int byte = num/8; //which byte
	int bit = num%8; //which bit
	/*------change the bit------*/
	unsigned char mask = 1 << bit;
	buf[byte] ^= mask;

	if( disk_write(base, buf) )
		return -1;
	return 0;
}

int Get_f_DB() { //get free data block
	char *buf = malloc(BLOCK_SIZE);
	for( int i = 0; i < 2; i++) {
		disk_read(D_BMAP_BASE+i, buf);
		for(int j = 0; j < BLOCK_SIZE; j++) {
			char byte = buf[i];
			unsigned char mask = 1;
			for(int k = 0; k < 8; k++, mask <<= 1)
				if( !(byte&mask) )
					return BLOCK_NUM/2*i+8*j+k;
		}
	}
	return -1;
}


int mkfs()
{
	void *buf = malloc(BLOCK_SIZE);
/*-------------init the super block------------*/
	memset(buf, 0, BLOCK_SIZE);
	struct statvfs* sup = buf;
	sup->f_bsize = BLOCK_SIZE;
	sup->f_blocks = BLOCK_NUM;
	sup->f_bfree = BLOCK_NUM - DR_BASE;
	sup->f_bavail = sup->f_bfree;
	sup->f_files = MAX_FILE_NUM;
	sup->f_ffree = MAX_FILE_NUM-1;
	sup->f_favail = sup->f_ffree;
	sup->f_namemax = 24;
	if( disk_write(0, buf) )
		return -1;

	memset(buf, 0, BLOCK_SIZE);
	if( disk_write(I_BMAP_BASE, buf) ) // init inode_bit_map
		return -1;

	if( disk_write(D_BMAP_BASE, buf) || disk_write(D_BMAP_BASE+1, buf) ) // init datablock_bit_map
		return -1;

	for( int i = I_TAB_BASE; i < DR_BASE; i++) // init inodes
		if( disk_write(i, buf) )
			return -1;

/*-------------init the root------------*/
	if( W_BMAP(ROOT_INUM, I_BMAP_BASE) )
		return -1;

	Inode *inode = (Inode*)buf + ROOT_INUM; // (root inode = 1)
	inode->mode = DIRMODE;
	inode->size = 0;
	inode->mtime = inode->ctime = inode->atime = time(NULL);
	if( disk_write(I_TAB_BASE, buf) )
		return -1;

	return 0;
}

int access_inode(unsigned short inodenum, Inode **inode){ //get the inode information by inodenum
	int block = I_TAB_BASE+inodenum/Inode_Per_Block;
	int off = inodenum % Inode_Per_Block;
	char *buf = malloc(BLOCK_SIZE);
	if ( disk_read(block, buf) )
		return -1;
	*inode = (Inode*)buf + off;
	return 0;
}
int read_direct(unsigned short blocknum, const char*dirname){
	char *buf = malloc(BLOCK_SIZE);
	if( disk_read(DR_BASE+blocknum, buf) )
		return -1;
	Reg* reg = (Reg*)buf;
	for( int j = 0; j < Reg_Per_Block; j++, reg++ ){
		if(reg->inodenum == 0)
			continue;
		else
			if( !strcmp(dirname, reg->name) )
				return reg->inodenum;
	}
	return 0;
}
int read_indiect(unsigned short blocknum, const char*dirname) {
	char *ptrbuf = malloc(BLOCK_SIZE);
	if( disk_read(DR_BASE+blocknum, ptrbuf) )
		return -1;
	unsigned short *direct = (unsigned short*)ptrbuf;
	for( int j = 0; j < Ptr_Per_Block; j++, direct++ ) {
		if( *direct == 0 )
			break;
		int re = read_direct(*direct, dirname);
		switch(re){
			case -1: return -1;
			case 0: break;
			default: return re;
		}
	}
	return 0;
}

unsigned short getinum(unsigned short inodenum, const char* dirname) { //get the inodenum of file(dirname)
	Inode* inode ;
	if( access_inode(inodenum, &inode) )
		return -1;
	/*------read datablock to get the inodenum of dirname------*/
	char *buf = malloc(BLOCK_SIZE);
	for( int i = 0; i < 12; i++ ) { //read the direct_pointer
		if( inode->block[i] == 0 )
			break;
		int re = read_direct(inode->block[i], dirname);
		switch(re){
			case -1: return -1;
			case 0: break;
			default: return re;
		}
	}
	for( int i = 12; i < 14; i++ ) { //read indirect pointer
		if( inode->block[i] == 0 )
			break;
		int re = read_indiect(inode->block[i], dirname);
		switch(re){
			case -1: return -1;
			case 0: break;
			default: return re;
		}
	}
}
int get_inode(const char *path, Inode **inode) { //get the inode information by path    |OK
	if( *path != '/' )
		return -1;
	if( strlen(path) == 1 ) { // root
		if ( access_inode(ROOT_INUM, inode) )
			return -1;
		else
			return ROOT_INUM;
	}
	else {
		unsigned len = strlen(path);
		if( path[len-1] == '/' )
			len -= 1;
		char dir[25]; //store the filename
		unsigned short inodenum = ROOT_INUM;
		for( int i = 1; i < len; i++) {
			for(int j = 0; ; j++, i++) {
				if( path[i] == '/' || i >= len) {
					dir[j] = '\0';
					break;
				}
				dir[j] = path[i];
			}
			inodenum = getinum(inodenum, dir);
			switch(inodenum) {
				case (unsigned short)-1: return -1;
				case 0: return 0;
				default: break;
			}
		}
		if( access_inode(inodenum, inode) )
			return -1;
		return inodenum;
	}
	return 0;
}
//Filesystem operations that you need to implement
int fs_getattr (const char *path, struct stat *attr) //OK
{
	if( !path )
		return -ENOENT;
	Inode *inode;
	switch( get_inode(path, &inode) ) {
		case -1: return -1; //disk read error
		case 0: return -ENOENT; //path is wrong
		default: break;
	}
	attr->st_mode = inode->mode;
	attr->st_nlink = 1;
	attr->st_uid = getuid();
	attr->st_gid = getgid();
	attr->st_size = inode->size;
	attr->st_atime = inode->atime;
	attr->st_mtime = inode->mtime;
	attr->st_ctime = inode->ctime;
	printf("Getattr is called:%s\n",path);
	return 0;
}

int fs_readdir(const char *path, void *buffer, fuse_fill_dir_t filler, off_t offset, struct fuse_file_info *fi)
{
	if( !path )
		return -ENOENT;
	Inode *inode;
	int inode_num = get_inode(path,&inode);
	switch( inode_num ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	/*------readdir------*/
	char *buf = malloc(BLOCK_SIZE);
	for( int i = 0; i < 12; i++ ) { //read direct
		if( inode->block[i] == 0 )
			break;
		if( disk_read(DR_BASE+inode->block[i], buf) )
			return -1;
		Reg *reg = (Reg*)buf;
		for( int j = 0; j < Reg_Per_Block; j++, reg++ ) {
			if( reg->inodenum == 0 )
				continue;
			filler(buffer, reg->name, NULL, 0); //modify the offset
		}
	}
	for( int i = 12; i < 14; i++ ){ //read indirect
		if( inode->block[i] == 0 )
			break;
		char *ptrbuf = malloc(BLOCK_SIZE);
		if( disk_read(DR_BASE+inode->block[i], ptrbuf) )
			return -1;
		unsigned short *direct = (unsigned short*)ptrbuf;
		for( int j = 0; j < Ptr_Per_Block; j++, direct++ ) {
			if( *direct == 0 )
				break;
			if( disk_read(DR_BASE+*direct, buf) )
				return -1;
			Reg *reg = (Reg*)buf;
			for( int k = 0; k < Reg_Per_Block; k++, reg++ ) {
				if( reg->inodenum == 0 )
					continue;
				filler(buffer, reg->name, NULL, 0);
			}
		}
	}

	inode->atime = time(NULL); // change access time
	if( disk_write(I_TAB_BASE+inode_num/Inode_Per_Block, inode-(inode_num%Inode_Per_Block)) )
		return -1;
	printf("Readdir is called:%s\n", path);
	return 0;
}

int fs_read(const char *path, char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
	Inode *inode;
	int inode_num = get_inode( path, &inode );
	switch( inode_num ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	/*------do read------*/
	if( offset > inode->size )
		return 0;

	int st = offset/(BLOCK_SIZE);
	for( int i = st; i < 12; i++) { //read direct
		if( inode->block[i] == 0 )
			break;
	}
	inode->atime = time(NULL); // change access time
	if( disk_write(I_TAB_BASE+inode_num/Inode_Per_Block, inode-(inode_num%Inode_Per_Block)) )
		return -1;
	printf("Read is called:%s\n",path);
	return 0;
}

void parser(const char *path, char *p_name, char *filename) { //parser path to get parent name and filename
	int len = strlen(path);
	if( path[len-1] == '/' )
		len -= 1;
	for( int i = 1; i < len; i++) { //parser the path: get the filename and the dirname
		for(int j = 0; ; j++, i++) {
			if( path[i] == '/' || i >= len) {
				filename[j] = '\0';
				break;
			}
			filename[j] = path[i];
		}
	}
	p_name[strlen(p_name)-strlen(filename)] = '\0';
	return ;
}
int fs_mknod (const char *path, mode_t mode, dev_t dev) //	OK
{
	char p_name[25]; //parent_file's name
	strcpy(p_name, path);
	char filename[25]; //newfile's name
	if( path[strlen(path)-1] == '/' )
		mode = DIRMODE;
	else mode = REGMODE;
	parser(path, p_name, filename);

	/*------mkfile------*/
	unsigned short inodenum =  Get_f_Inode(); //newfile's inode num
	if( !inodenum )
		return -ENOSPC;
	Inode *inode;
	access_inode(inodenum, &inode);
	inode->mode = mode;
	inode->mtime=inode->ctime=inode->atime = time(NULL);
	inode->size = 0;
	if ( disk_write(I_TAB_BASE + inodenum/Inode_Per_Block, inode-(inodenum % Inode_Per_Block)))
		return -1;
	/*------modify the p_file------*/
	Inode *p_inode;
	int p_inodenum = get_inode(p_name, &p_inode);
	switch( p_inodenum ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	/*------add new reg------*/
	if( p_inode->size >= MAX_SIZE )
		return -1;
	char buf[BLOCK_SIZE];
	int writen = 0;
	for( int i = 0; i < 12; i++ ) { //check the direct
		if( p_inode->block[i] == 0 ) {  //sum size of regs % BLOCK_SIZE = 0
			int newblock = Get_f_DB();
			if( newblock == -1 )
				return -ENOSPC;
			p_inode->block[i] = newblock;
		}
		if( disk_read(DR_BASE+p_inode->block[i], buf) )
			return -1;
		Reg *reg = (Reg*)buf;
		for( int j = 0; j < Reg_Per_Block; j++, reg++) {
			if( reg->inodenum == 0 ) { //find a free reg
				reg->inodenum = inodenum;
				strcpy(reg->name, filename);
				if ( disk_write(DR_BASE+p_inode->block[i], buf) )
					return -1;
				writen = 1;
				i = 12;// break the outer
				break;
			}
			else continue;
		}
	}

	for( int i = 12; i < 14 && !writen ; i++) { //check the indirect
		char pbuf[BLOCK_SIZE];
		unsigned short blocknum = p_inode->block[i];
		if( blocknum == 0 ) {
			int newblock = Get_f_DB();
			if( newblock == -1 )
				return -ENOSPC;
			p_inode->block[i] = newblock;
		}
		if ( disk_read(DR_BASE+p_inode->block[i], pbuf) )
			return -1;
		unsigned short *ptr = (unsigned short*) pbuf;
		for( int j = 0; j < Ptr_Per_Block; j++, ptr++ ) {
			if( *ptr == 0 ) {
				int newblock = Get_f_DB();
				if( newblock == -1 )
					return -ENOSPC;
				*ptr = (unsigned short)newblock;
			}
			if( disk_read(DR_BASE+*ptr, buf) )
				return -1;
			Reg *reg = (Reg*)buf;
			for( int k = 0; k < Reg_Per_Block; k++, reg++) {
				if( reg->inodenum == 0 ) { //find a free reg
					reg->inodenum = inodenum;
					strcpy(reg->name, filename);
					if ( disk_write(DR_BASE+*ptr, buf) )
						return -1;
					i = 14;// break the outer
					j = Ptr_Per_Block;
					break;
				}
				else continue;
			}
		}
	}
	p_inode->mtime = p_inode->ctime = time(NULL);
	if ( disk_write(I_TAB_BASE + p_inodenum/Inode_Per_Block, p_inode-(p_inodenum % Inode_Per_Block)))
		return -1;
	printf("Mknod is called:%s\n",path);
	return 0;
}

int fs_mkdir (const char *path, mode_t mode) //  OK
{
	char tmp[25];
	strcpy(tmp,path);
	if( tmp[strlen(tmp)-1] != '/' ) {
		tmp[strlen(tmp)] = '/';
		tmp[strlen(tmp)+1] = '\0';
	}
	switch(fs_mknod(tmp, mode, 0)) {
		case -1: return -1;
		case -ENOSPC: return -ENOSPC;
		default: break;
	}
	printf("Mkdir is called:%s\n",path);
	return 0;
}

int fs_rmdir (const char *path)
{
	printf("Rmdir is called:%s\n",path);
	return 0;
}

int fs_unlink (const char *path)
{
	char filename[25];
	char p_name[25];
	parser(path, p_name, filename);
	/*------delete the parent file's reg------*/
	Inode *p_inode;
	int p_inodenum = get_inode(p_name, &p_inode);
	switch( p_inodenum ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	char buf[BLOCK_SIZE];
	int del = 0;
	for( int i = 0; i < 12; i++ ) {
		unsigned short blocknum = p_inode->block[i];
		if(blocknum == 0)
			break;
		if(disk_read(DR_BASE+blocknum, buf))
			return -1;
		Reg* reg = (Reg*)buf;
		for( int j = 0; j < Reg_Per_Block; j++, reg++ ){
			if( !strcmp(reg->name, filename) ) {
				char *S="";
					strcpy(reg->name,S);
				reg->inodenum = 0;
				if ( disk_write(DR_BASE+blocknum, buf) )
					return -1;
				del = 1;
				i = 12;// break the outer
				break;
			}
		}
	}
	for( int i = 12; i < 14 && !del ; i++) { //check the indirect
		char pbuf[BLOCK_SIZE];
		unsigned short blocknum = p_inode->block[i];
		if( blocknum == 0 )
			break;
		if ( disk_read(DR_BASE+blocknum, pbuf) )
			return -1;
		unsigned short *ptr = (unsigned short*) pbuf;
		for( int j = 0; j < Ptr_Per_Block; j++, ptr++ ) {
			if( *ptr == 0 )
				break;
			if( disk_read(DR_BASE+*ptr, buf) )
				return -1;
			Reg *reg = (Reg*)buf;
			for( int k = 0; k < Reg_Per_Block; k++, reg++) {
				if( !strcmp(reg->name, filename) ) {
					char *S="";
					strcpy(reg->name,S);
					reg->inodenum = 0;
					if ( disk_write(DR_BASE+*ptr, buf) )
						return -1;
					i = 14;// break the outer
					j = Ptr_Per_Block;
					break;
				}
				else continue;
			}
		}
	}
	p_inode->mtime = p_inode->ctime = time(NULL);
	if ( disk_write(I_TAB_BASE + p_inodenum/Inode_Per_Block, p_inode-(p_inodenum % Inode_Per_Block)))
		return -1;
	/*------delete the file------*/
	Inode *inode;
	int inodenum = get_inode(path, &inode);
	switch( inodenum ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	for( int i = 0; i < 12; i++) {
		unsigned short blocknum = inode->block[i];
		if( blocknum == 0 ) break;
		if( disk_read(DR_BASE+blocknum,buf) ) return -1;
		memset(buf, 0, BLOCK_SIZE);
		if( disk_write(DR_BASE+blocknum, buf) ) return -1;
	}
	printf("Unlink is callded:%s\n",path);
	return 0;
}

int fs_rename (const char *oldpath, const char *newpath)
{
	printf("Rename is called:%s\n",newpath);
	return 0;
}

int fs_write (const char *path, const char *buffer, size_t size, off_t offset, struct fuse_file_info *fi)
{
	printf("Write is called:%s\n",path);
	return 0;
}

int fs_truncate (const char *path, off_t size)
{
	if ( !path ) return -ENOENT;
	if (size < 0) return -1;
	Inode *inode;
	int inode_num = get_inode(path,&inode);
	switch( inode_num ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}
	/*------truncate------*/


	inode->size = size; //change size
	inode->ctime = time(NULL); //change ctime
	if ( disk_write(I_TAB_BASE + inode_num/Inode_Per_Block, inode-(inode_num % Inode_Per_Block)))
		return -1;
	printf("Truncate is called:%s\n",path);
	return 0;
}

int fs_utime (const char *path, struct utimbuf *buffer) //  OK
{
	if(!path) return -ENOENT;
	struct Inode* inode;
	int inode_num = get_inode(path,&inode);
	switch( inode_num ) {
		case -1: return -1; //disk read error
		case -2: return -ENOENT; //path is wrong
		default: break;
	}

	inode->ctime = time(NULL);
	inode->atime = buffer->actime;
	inode->mtime = buffer->modtime;

	if( disk_write(I_TAB_BASE + inode_num/Inode_Per_Block, inode-(inode_num % Inode_Per_Block)) )
		return -1;
	printf("Utime is called:%s\n",path);
	return 0;
}

int fs_statfs (const char *path, struct statvfs *stat) // OK
{
	if( !path ) return -ENOENT;
	char *buf = malloc(BLOCK_SIZE);
	disk_read(0, buf);
	struct statvfs* sup = (struct statvfs*)buf;
	*stat = *sup;
	printf("Statfs is called:%s\n",path);
	return 0;
}

//Functions you don't actually need to modify
int fs_open (const char *path, struct fuse_file_info *fi)
{
	printf("Open is called:%s\n",path);
	return 0;
}

int fs_release (const char *path, struct fuse_file_info *fi)
{
	printf("Release is called:%s\n",path);
	return 0;
}

int fs_opendir (const char *path, struct fuse_file_info *fi)
{
	printf("Opendir is called:%s\n",path);
	return 0;
}

int fs_releasedir (const char * path, struct fuse_file_info *fi)
{
	printf("Releasedir is called:%s\n",path);
	return 0;
}

static struct fuse_operations fs_operations = {
	.getattr    = fs_getattr,
	.readdir    = fs_readdir,
	.read       = fs_read,
	.mkdir      = fs_mkdir,
	.rmdir      = fs_rmdir,
	.unlink     = fs_unlink,
	.rename     = fs_rename,
	.truncate   = fs_truncate,
	.utime      = fs_utime,
	.mknod      = fs_mknod,
	.write      = fs_write,
	.statfs     = fs_statfs,
	.open       = fs_open,
	.release    = fs_release,
	.opendir    = fs_opendir,
	.releasedir = fs_releasedir
};

int main(int argc, char *argv[])
{
	if(disk_init())
		{
		printf("Can't open virtual disk!\n");
		return -1;
		}
	if(mkfs())
		{
		printf("Mkfs failed!\n");
		return -2;
		}
    return fuse_main(argc, argv, &fs_operations, NULL);
}
