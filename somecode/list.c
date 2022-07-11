#include "csapp.h"
typedef struct node_t {
    int key;
    struct node_t *next;
} node_t;

typedef struct list_t{
    node_t * head;
} list;

list mylist;

int list_lookup(list *L, int key) {
    int rv = -1;
    node_t* cur = L->head;
    while(cur) {
        if(cur->key == key){
            rv = 0;
            break;
        }
        cur = cur->next;
    }
    return rv;
}
int CAS(unsigned long *dst, unsigned long old, unsigned long new) {
    unsigned char ret;
    asm volatile(
        " lock cmpxchgq %2,%1\n"
        " sete %0\n"
        :"=q" (ret), "=m"(*dst)
        :"r"(new), "m"(*dst), "a"(old)
        :"memory");
    if(ret)
        return 1;
    return 0;
}
void list_insert(list *L, int key){
    node_t *new = malloc(sizeof(node_t));
    if(new == NULL) {
        perror("malloc");
        return ;
    }
    new->key = key;
    int tmp;
    do{
        new->next = L->head;
        tmp = CAS((unsigned long*)(&(L->head)), (unsigned long)(new->next), (unsigned long)new);
    }while(tmp == 0);
}

int main() {
    list *L = malloc(sizeof(list));
    L->head = NULL;
    int arr[5] = {10, 22, 34, 11, 19};
    for(int i = 0; i < 5; i++)
        list_insert(L, arr[i]);
    for(int i = 0; i < 5; i++)
        printf("%d\n", list_lookup(L,arr[i]) );
    return 0;
}


