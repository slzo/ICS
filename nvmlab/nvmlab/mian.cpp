#include "mian.h"

#include <fstream>
#include <iostream>
#include <libpmemobj.h>
#include <map>
#include <stdio.h>
#include <string.h>
#include <string>
#include <unistd.h>
#include <vector>
/*-----------声明所使用的结构----------*/
POBJ_LAYOUT_BEGIN(btree_node);
POBJ_LAYOUT_ROOT(btree_node, struct btree);
POBJ_LAYOUT_TOID(btree_node, struct btree_node);
POBJ_LAYOUT_END(btree_node);

#define LAYOUT_NAME "nvm"
using std::string;
using std::endl;
using std::cout;
bool do_not_dump = false;

struct btree //定义root
{
     TOID(struct btree_node) root;
};

struct btree_node{ //定义所使用的树形结构
    char key[17];
    char value[129];
    TOID(struct btree_node) left;
    TOID(struct btree_node) right;
    TOID(struct btree_node) parent;
};
struct btree_node_arg { //构造树形节点时所用到的参数
    size_t size;
    char key[17];
    char value[129];
    TOID(struct btree_node) parent;
};
static inline int file_exists(char const *file) { return access(file, F_OK); }

void Vi(PMEMobjpool *pop, TOID(struct btree_node) *proot) { //中序遍历,debug使用
    if(!TOID_IS_NULL(*proot)){
        Vi(pop, &D_RW(*proot)->left);
        cout << D_RO(*proot)->key << " ysj " << D_RO(*proot)->value << endl;
        Vi(pop, &D_RW(*proot)->right);
    }
}

static int btree_node_construct(PMEMobjpool *pop, void *ptr, void *arg) { //构造二叉树节点
	struct btree_node *node = (struct btree_node *)ptr;
	struct btree_node_arg *a = (struct btree_node_arg *)arg;
	strcpy(node->key, a->key);
	strcpy(node->value, a->value);
	node->left = TOID_NULL(struct btree_node);
	node->right = TOID_NULL(struct btree_node);
    node->parent = a->parent;
	pmemobj_persist(pop, node, a->size);

	return 0;
}
void Set(PMEMobjpool *pop, char* key, char* value) { //SET操作

    TOID(struct btree) troot = POBJ_ROOT(pop, struct btree);
    TOID(struct btree_node) *proot = &D_RW(troot)->root;
    TOID(struct btree_node) *pproot = &D_RW(troot)->root;
    /*-----------------向下寻找插入位置------------------*/
    while( !TOID_IS_NULL(*proot) ) {
        pproot = proot;
        if( strcmp(D_RO(*proot)->key, key) < 0 )
            proot = &D_RW(*proot)->right;
        else if (  strcmp(D_RO(*proot)->key, key) > 0 )
            proot = &D_RW(*proot)->left;
        else {
            pmemobj_memcpy_persist(pop, D_RW(*proot)->value, value, 129);
            return ;
        }
    }
    /*-----------------进行节点的构造--------------------*/
    struct btree_node_arg arg;
    arg.size = sizeof(struct btree_node);
    strcpy(arg.key, key); strcpy(arg.value, value);
    if( !TOID_IS_NULL(*pproot) )
        arg.parent = *pproot;
    else arg.parent = TOID_NULL(struct btree_node);
    if(POBJ_ALLOC(pop, proot, struct btree_node, arg.size, btree_node_construct, &arg)==-1)
        cout << "failed alloc" <<endl;
    return;
}
string Get(PMEMobjpool *pop, char* key) {

	TOID(struct btree) troot = POBJ_ROOT(pop, struct btree);
	TOID(struct btree_node) *proot = &D_RW(troot)->root;
    string re;
    /*-----------------向下寻找key所在的节点-----------------*/
	while ( !TOID_IS_NULL(*proot) ) {
        if( strcmp(D_RO(*proot)->key, key) < 0 )
            proot = &D_RW(*proot)->right;
        else if (  strcmp(D_RO(*proot)->key, key) > 0 )
            proot = &D_RW(*proot)->left;
        else
            return re = D_RO(*proot)->value;
    }

	return re = "-"; //key对应的节点不存在
}

string Next(PMEMobjpool *pop, char* key) {

	TOID(struct btree) troot = POBJ_ROOT(pop, struct btree);
	TOID(struct btree_node) *proot = &D_RW(troot)->root;
	TOID(struct btree_node) *pproot = &D_RW(troot)->root;
    string re;
    /*-----------------向下寻找key所在节点,不存在则得到NULL----------*/
	while ( !TOID_IS_NULL(*proot) ) {
        pproot = proot;
        if( strcmp(D_RO(*proot)->key, key) < 0 )
            proot = &D_RW(*proot)->right;
        else if (  strcmp(D_RO(*proot)->key, key) > 0 )
            proot = &D_RW(*proot)->left;
        else
            break;
	}

	/*----------------key不存在于树中--------------------*/
    if(TOID_IS_NULL(*proot)) {
        if (  strcmp(D_RO(*pproot)->key, key) > 0 ) //key比最后访问的节点的值小,最后访问的节点就是后继,直接返回
            return re = D_RO(*pproot)->key;
        else //key比最后访问的节点的值大,key的NEXT就是最后访问节点的后继,进行最后访问节点后继的查询
            proot = pproot;
    }
	/*----------------key存在于树中,进行后继查询即可--------------------*/
	if( !TOID_IS_NULL(D_RO(*proot)->right) ) { //右子树不空,右子树的最左节点
        proot = &D_RW(*proot)->right;
        while( !TOID_IS_NULL(D_RO(*proot)->left) )
            proot = &D_RW(*proot)->left;
        return re = D_RO(*proot)->key;
    }
    else{ //右子树空,递归向上查找
        while( !TOID_IS_NULL(D_RO(*proot)->parent) && TOID_EQUALS(*proot,D_RO(D_RO(*proot)->parent)->right) ) 
            proot = &D_RW(*proot)->parent;
        proot = &D_RW(*proot)->parent;
        if(!TOID_IS_NULL(*proot))
            return re = D_RO(*proot)->key;
        else return re="-"; //查找至根节点,节点无后继,返回-
    }
	return re = "-";
}
void mian(std::vector<std::string> args)
{
    auto filename = args[0].c_str();
    PMEMobjpool *pop;
    /*-----------------------------create my pool--------------------------*/
    if (file_exists(filename) != 0)
    {
        pop = pmemobj_create(filename, LAYOUT_NAME, 10000000*sizeof(btree_node),0666);
    }
    else
    {
        pop = pmemobj_open(filename, LAYOUT_NAME);
        do_not_dump = true;
    }
    if (pop == NULL){
        std::cout << filename << std::endl;
        perror("pmemobj_create");
        return;
    }
    /*----------------------------deal the query--------------------------*/
    while (1)
    {
        Query q = nextQuery();
        switch (q.type)
        {
            case Query::SET:
                Set(pop, (char*)q.key.c_str(), (char*)q.value.c_str());
                break;

            case Query::GET:
                q.callback(Get(pop, (char*)q.key.c_str()));
                break;

            case Query::NEXT:

                q.callback(Next(pop, (char*)q.key.c_str()));
                break;
            default:
                throw std::invalid_argument(std::to_string(q.type));
        }
    }


    pmemobj_close(pop);
}
