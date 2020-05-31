//
//  main.m
//  objc-classes-messages
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyTime.h"

int main(int argc, const char * argv[]) {
    
    // initialize
    MyTime *x = [MyTime alloc];
    
    // accessing properties like so
    x.hour = 0;
    // is really syntactic sugar for a message calling the setter!
    [x setHour:0];
    
    // similarly, this is really syntactic sugar for the getter (just the variable itself)
    int y = x.hour;
    y = [x hour];
    
    x.day = 1;
    x.year = 100;
    
    // call a function using a message
    long resultOne;
    resultOne = [x exampleMethodOne: 100];
    
    // call a function using a message
    int resultTwo;
    resultTwo = [x exampleMethodTwo];
    
    printf("%u \n", resultOne);
    printf("%d \n", resultTwo);
    
    // call a function using a message
    NSString* resultThree;
    resultThree = [x getDate];
    
    // call a function using a message
    NSString* resultFour;
    resultFour = [x sayHello];
    
    printf("%s \n",  [resultThree cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("%s \n",  [resultFour cStringUsingEncoding:NSUTF8StringEncoding]);

    return 0;
}
