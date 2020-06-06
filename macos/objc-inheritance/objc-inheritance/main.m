//
//  main.m
//  objc-inheritance
//
//  Created by Adam Gerard on 6/6/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Descendant.h"

int main(int argc, const char * argv[]) {
    Descendant * x = [Descendant alloc];
    
    // access inherited attributes
    x.a = 0;
    x.b = 1;
    x.c = 2;
    
    // access inherited methods
    NSString *r1 = [x sayHello];
    NSString *r2 = [x sayGoodbye];
    
    printf("%s \n", [r1 cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("%s \n", [r2 cStringUsingEncoding:NSUTF8StringEncoding]);
    
    return 0;
}
