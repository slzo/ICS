//闫世杰-2020200982
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

typedef struct cache_line{
	int valid; //有效位
	int target; //标志位
	int time; //上一次使用距离当前的时间
} cache_line;

int s, S, E, b;
int hit = 0, miss = 0, eviction = 0;
cache_line **cache;

void Init(){
	for(int i = 0; i < S; i++)
		for(int j = 0; j < E; j++){
			cache[i][j].valid = 0;
			cache[i][j].time = 0;
			cache[i][j].target = 0;
		}
	return;
}

int set_ful(int set){ //判断组是否已满，满则返回-1，非满返回第一个空闲
	for(int i = 0; i < E; i++)
		if(!cache[set][i].valid)
			return i;
	return -1;
}

void cache_rep(int set, int target){ //组满，替换组内的行
	int max = 0, place;
	for(int i = 0; i < E; i++) //LRU 选取组内访问时间距离最长的目标进行替换
		if(cache[set][i].time > max){
			place = i;
			max = cache[set][i].time;
		}
	cache[set][place].target = target;
	cache[set][place].time = 0;
}

int cache_hit(int set, int target){ //判断是否命中
	int flag = 0;
	for(int i = 0; i < E; i++){
		if(cache[set][i].valid){
			if(cache[set][i].target == target){
				cache[set][i].time = 0;//将命中的目标标记为最近使用
				flag = 1;
			}
			else cache[set][i].time += 1;//加长非命中块的距离时间
		}
	}
	return flag;
}

int cache_jug(unsigned address){
	int set = (address >> b)&((1<<s)-1);
	int target = (address >> (b+s));
	if(!cache_hit(set, target)){ //是否miss
		miss++;
//		printf(" miss");
		int place = set_ful(set);
		if(place != -1){ //组未满 load_cache 
			cache[set][place].target = target;
			cache[set][place].time = 0;
			cache[set][place].valid = 1;
		}
		else { //组满 replace_cache
//			printf(" eviction");
			eviction++;
			cache_rep(set, target);
		}
		return 0;
	}
	else {
//		printf(" hit");
		hit++;
		return 1;
	}
}

void Load(unsigned address){ // Load
	cache_jug(address);
	return ;
}
void Store(unsigned address){ // Store
	cache_jug(address);
	return ;
}
void Modify(unsigned address){ // Modify 根据ref -v可知要执行两次判断
	cache_jug(address);
	Store(address);
	return ;
}
void Start(FILE *tracefile){
	Init();
	long address;
	int block_size;
	char op;
	while(fscanf(tracefile," %c %lx,%d" ,&op, &address, &block_size) != -1){
//				printf(" %c %lx %d\n " ,op,address, block_size);
			switch(op){
				case 'I':
					
					break;
				case 'L':
//				printf("%c %lx,%d" ,op ,address, block_size);
					Load(address);
//				printf("\n");
					break;
				case 'M':
//				printf("%c %lx,%d" ,op ,address, block_size);
					Modify(address);
//				printf("\n");
					break;
				case 'S':
//				printf("%c %lx,%d" ,op ,address, block_size);
					Store(address);
//				printf("\n");
					break;
				default:
					break;
			}
	}
	return ;
}
int main(int argc, char **argv){
    FILE *tracefile;
    char opt;
    while((opt = getopt(argc,argv,"hvs:E:b:t:")) != -1){
        switch(opt){
            case 'h':
            printf( "Usage: ./csim-ref [-hv] -s <s> -E <E> -b <b> -t <tracefile>\n\
• -h: Optional help flag that prints usage info\n\
• -v: Optional verbose flag that displays trace info\n\
• -s <s>: Number of set index bits (S = 2^s is the number of sets)\n\
• -E <E>: Associativity (number of lines per set)\n\
• -b <b>: Number of block bits (B = 2^b is the block size)\n\
• -t <tracefile>: Name of the valgrind trace to replay\n");
                break;
            case 's':
                s = atoi(optarg);
		S = 1 << s;
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                tracefile = fopen((const char*)optarg, "r");
                break;
            default:
                break;
        }
    }//取出所需参数s E b
    cache = (cache_line**)malloc(S*sizeof(cache_line*)); //创建cache
    for(int i = 0; i < S; i++)
	cache[i] = (cache_line*)malloc(E*sizeof(cache_line));
    Start(tracefile);
    fclose(tracefile);    
//    printf("%d %d %d", hit, miss, eviction);
    printSummary(hit, miss, eviction);
    for(int i = 0; i < S; i++)
	free(cache[i]);
    free(cache);
    return 0;
} 

