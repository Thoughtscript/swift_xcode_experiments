//
//  main.m
//  objc-simple-program
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>

struct time{
    int year;
    int month;
    int week;
    int day;
    int hour;
    int minute;
    int second;
};

int globalInt = 100;

// via char
void goodDay(char *timeOfDay) {
    
    // string interpolation
    printf("Good %s\n", timeOfDay);
}

// call other method
void dayGreeting(int loops) {
    for (int i = 0; i < loops; i++) {
        goodDay("morning");
        goodDay("afternoon");
        goodDay("evening");
    }
    
    // print global variable
    printf("%d\n", globalInt);
}

// Simple app with main method
int main(int argc, const char * argv[]) {
    
    // override global variable in scope (similar to let in JS)
    int globalInt = 1000;
    // convert to NSString using string with format
    NSString *myString = [NSString stringWithFormat:@"%d", globalInt];
    // format to char*
    printf("%s\n", [myString cStringUsingEncoding:NSUTF8StringEncoding]);
    
    //Work with structs
    struct time myTime;
    myTime.year = 2020;
    myTime.month = 5;
    myTime.day = 30;
    myTime.hour = 17;
    myTime.minute = 24;
    myTime.second = 5;
    printf("%d/%d/%d T %d:%d:%d \n",
           myTime.month,
           myTime.day,
           myTime.year,
           myTime.hour,
           myTime.minute,
           myTime.second
           );
    
    dayGreeting(7);
    
    return 0;
}
