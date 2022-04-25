/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "NOTEAM",
    /* First member's full name */
    "YanShijie",
    /* First member's email address */
    "2020200982@ruc.edu.cn",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8
/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* $begin mallocmacros */
/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ //line:vm:mm:beginconst
#define DSIZE       8       /* Doubleword size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  //line:vm:mm:endconst
#define MAX(x, y) ((x) > (y)? (x) : (y))
/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) //line:vm:mm:pack
/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            //line:vm:mm:get
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    //line:vm:mm:put
/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   //line:vm:mm:getsize
#define GET_ALLOC(p) (GET(HDRP(p)) & 0x1)                    //line:vm:mm:getalloc
/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      //line:vm:mm:hdrp
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) //line:vm:mm:ftrp
/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) //line:vm:mm:nextblkp
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) //line:vm:mm:prevblkp
/* $end mallocmacros */
#define PRED_PTR(ptr) ((char *)(ptr)) // get the predecessor ptr( the ptr in the free_heap_list
#define SUCC_PTR(ptr) ((char *)(ptr) + DSIZE) //get the successor ptr( the ptr in the free_heap_list
#define PRED(ptr) (*(char **)(ptr)) //get pred address of free block ( the address in the malloc_address
#define SUCC(ptr) (*(char **)(SUCC_PTR(ptr))) //get suc address of free block ( the address in the malloc_address
#define SET_PTR(p, ptr) (*(unsigned long *)(p) = (unsigned long)(ptr)) //put the ptr in the given_place p

/* 
 * mm_init - initialize the malloc package.
 */
#define MAX_LEVEL 15
#define MIN_BLOCK 24
void *free_heap_lists[MAX_LEVEL]; //采用多级链表的分离适配,最小块为32B (header+footer=8B + 16B ptr
int Get_Level(size_t size) {
    int level=0;
    size /= MIN_BLOCK;
    while(size > 1 && level < MAX_LEVEL-1){
        size /= 2;
        level++;
    }
    return level;
}
void Insert_free_node(void* ptr, size_t size){
    void* place = free_heap_lists[Get_Level(size)];
    //-----find fit place to place bp
    if(place) {//list is not empty, insert to the head
        SET_PTR( PRED_PTR(place), ptr );
        SET_PTR( SUCC_PTR(ptr), place );
        SET_PTR( PRED_PTR(ptr), NULL);
    }
    else { //list is empty
        SET_PTR( PRED_PTR(ptr), NULL);
        SET_PTR( SUCC_PTR(ptr), NULL);
    }
    free_heap_lists[Get_Level(size)] = ptr;
}

void Delete_free_node(void* ptr, size_t size){
    //-----delete the node
    int level = Get_Level(size);
    if( PRED(ptr) ) {
        if( SUCC(ptr) ) {  //->ptr->
            SET_PTR( SUCC_PTR(PRED(ptr)), SUCC(ptr) );
            SET_PTR( PRED_PTR(SUCC(ptr)), PRED(ptr) );
        }
        else // ->ptr
            SET_PTR( SUCC_PTR(PRED(ptr)), NULL );
    }
    else {

        if( SUCC(ptr) ) { // ptr->
            SET_PTR( PRED_PTR(SUCC(ptr)), NULL );
            free_heap_lists[level] = SUCC(ptr);
        }
        else // ptr
            free_heap_lists[level] = NULL;
    }
}

static void *coalesce(void *bp) {
    int if_pre = GET_ALLOC(PREV_BLKP(bp) );
    int if_suc = GET_ALLOC(NEXT_BLKP(bp) );
    size_t size = GET_SIZE(HDRP(bp));
    if(if_pre) {
        if(if_suc) // both allocated
            return bp;//do nothing
        else { //pre=allocated next=free
            Delete_free_node( bp, GET_SIZE(HDRP(bp)) );
            Delete_free_node( NEXT_BLKP(bp), GET_SIZE( HDRP(NEXT_BLKP(bp)) ) );
            size += GET_SIZE( HDRP(NEXT_BLKP(bp)) );
            PUT(HDRP(bp), PACK(size, 0));
            PUT(FTRP(bp), PACK(size, 0));
        }
    }
    else {
        Delete_free_node( bp, GET_SIZE(HDRP(bp)) );
        Delete_free_node( PREV_BLKP(bp), GET_SIZE( HDRP(PREV_BLKP(bp)) ) );
        size += GET_SIZE( HDRP(PREV_BLKP(bp)) );
        if(if_suc) {//pre=free next=allocated
            PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
            PUT(FTRP(bp), PACK(size, 0));
            bp = PREV_BLKP(bp);
        }
        else { //both free
            Delete_free_node( NEXT_BLKP(bp), GET_SIZE( HDRP(NEXT_BLKP(bp)) ) );
            size += GET_SIZE( HDRP(NEXT_BLKP(bp)) );
            PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
            PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
            bp = PREV_BLKP(bp);
        }
    }
    Insert_free_node(bp, size);
    bp = coalesce(bp); // coalesce recursively
    return bp;
}

static void *extentd_heap(size_t size) {
    char *bp;
    size = ALIGN(size);
    if( (long)(bp=mem_sbrk(size)) == -1)
        return NULL;
    PUT( HDRP(bp), PACK(size, 0)); //free header
    PUT( FTRP(bp), PACK(size, 0)); //free footer
    PUT( HDRP(NEXT_BLKP(bp)), PACK(0, 1)); //new epilogue header
    Insert_free_node(bp, size);
    return coalesce(bp); //coslasce if previous block is free
}

int mm_init(void) {
    char *heap_list;
    if( (heap_list = mem_sbrk(4*WSIZE)) == (void*)-1 )
        return -1;
    PUT(heap_list, 0); //Alignment padding
    PUT(heap_list + (1 * WSIZE), PACK(DSIZE, 1)); //prologue header
    PUT(heap_list + (2 * WSIZE), PACK(DSIZE, 1)); //prologue footer
    PUT(heap_list + (3 * WSIZE), PACK(0, 1)); //epilogue header
    for(int i = 0; i < MAX_LEVEL; i++) //initialize the free heap lists
        free_heap_lists[i] = NULL;
    if(extentd_heap(CHUNKSIZE) == NULL)
        return -1;
    return 0;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *place(void* ptr, size_t size) { //put the left space to the fit list
    size_t surplus = GET_SIZE(HDRP(ptr))-size;
    Delete_free_node(ptr, GET_SIZE(HDRP(ptr)) );
    if(surplus < MIN_BLOCK) { //surplus can't be used later
        PUT( HDRP(ptr), PACK(GET_SIZE(HDRP(ptr)),1) );
        PUT( FTRP(ptr), PACK(GET_SIZE(HDRP(ptr)),1) );
        return ptr;
    }
    else if(surplus >= 10*size) { //surplus >> size
        PUT(HDRP(ptr), PACK(surplus, 0));
        PUT(FTRP(ptr), PACK(surplus, 0));
        *(unsigned int *)(HDRP(NEXT_BLKP(ptr))) = PACK(size,1);
        *(unsigned int *)(FTRP(NEXT_BLKP(ptr))) = PACK(size,1);
        Insert_free_node(ptr, surplus);
        return NEXT_BLKP(ptr);
    }
    else { //surplus can be used later
        PUT(HDRP(ptr), PACK(size, 1));
        PUT(FTRP(ptr), PACK(size, 1));
        PUT(HDRP(NEXT_BLKP(ptr)), PACK(surplus, 0));
        PUT(FTRP(NEXT_BLKP(ptr)), PACK(surplus, 0));
        Insert_free_node(NEXT_BLKP(ptr), surplus);
        return ptr;
    }
}

void *mm_malloc(size_t size) {
    if(!size)
        return NULL;
    size = MAX(MIN_BLOCK,ALIGN(size+2*WSIZE)); // alloc_size+footer&header -> align to 8
    void *ptr;
    for(int level = Get_Level(size); level < MAX_LEVEL; level++) { //search from best_fit list, if not found, search in higger level
        size_t surplus = 1<<30;
        void *curptr = free_heap_lists[level];
        while(curptr) { //check current list by best_fit
            if( GET_SIZE(HDRP(curptr)) < size )
                curptr = SUCC(curptr);
            else{
                if( (GET_SIZE(HDRP(curptr)) - size) < surplus ) {
                    ptr = curptr;
                    surplus = GET_SIZE(HDRP(curptr))-size;
                }
                curptr = SUCC(curptr);
            }
        }
        if(ptr) //get fit free_block in current list
            return place(ptr, size);
    }
    if(ptr == NULL) //there is no fit free block
        if( (ptr = extentd_heap(MAX(size, CHUNKSIZE))) == NULL)
            return NULL;
    return place(ptr,size);
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
    size_t size = GET_SIZE(HDRP(ptr));
    PUT( HDRP(ptr), PACK(size, 0) ); //free header and footer
    PUT( FTRP(ptr), PACK(size, 0) );
    Insert_free_node( ptr, size); // coalesce and insert to the list
    coalesce(ptr);
    return;
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    if(size == 0) { //relloc_size == 0, free
        mm_free(ptr);
        newptr = NULL;
    }
    else {
        size = MAX(MIN_BLOCK,ALIGN(size+2*WSIZE));
        size_t present_size = GET_SIZE(HDRP(ptr));
        if( present_size >= size ) // old_space_size can satisfy
            newptr = ptr;
        else if( !GET_ALLOC(NEXT_BLKP(ptr)) ) {//next_block is free
            int next_size = GET_SIZE( HDRP(NEXT_BLKP(ptr)) );
            if(next_size == 0) { //present_block is the end_block, extentd_heap
                if( extentd_heap( MAX((size-present_size), CHUNKSIZE) ) == NULL )
                    newptr = NULL;
            }
            next_size = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
            if(next_size+present_size >= size) { //next+present can satisfy
                Delete_free_node(NEXT_BLKP(ptr), next_size);
                PUT( HDRP(ptr), PACK(present_size+next_size, 1) );
                PUT( FTRP(ptr), PACK(present_size+next_size, 1) );
                newptr = ptr;
            }
        }
        else { //can't satisfy by extend present ptr, need to ask new place and copy
            newptr = mm_malloc(size);
            if (newptr == NULL)
                return NULL;
            copySize = GET_SIZE(HDRP(ptr));
            if (size < copySize)
                copySize = size;
            memcpy(newptr, oldptr, copySize);
            mm_free(oldptr);
        }
    }
    return newptr;
}
