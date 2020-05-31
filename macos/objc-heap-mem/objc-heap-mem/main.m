//
//  main.m
//  objc-heap-mem
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>

// pointers
void exampleMethodOne() {
    
    // init to heap
    int *myNum = NULL;
    myNum = malloc(sizeof(int));
    *myNum = 0;
    // note pointer address %p
    printf("%d at address: %p \n", *myNum, myNum);
    
    // pointers and references
    int *myNewInt = NULL;
    myNewInt = &*myNum;
    *myNewInt = 100;
    printf("%d at address: %p \n", *myNewInt, myNewInt);
    printf("%d at address: %p \n", *myNum, myNum);
    
    // use to remove malloc pointers
    free(myNum);
}

// return variable from stack
int exampleMethodTwo() {
    int a = 0;
    int *b = &a;
    printf("%d at address: %p \n", *b, b);
    return *b;
}

int main(int argc, const char * argv[]) {
    exampleMethodOne();
    int x = exampleMethodTwo();
    printf("%d at address: %p \n", x, &x);
    printf("%d \n", exampleMethodTwo());
    return 0;
}
