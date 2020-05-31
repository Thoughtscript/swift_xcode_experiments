//
//  MyTime.h
//  objc-classes-messages
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//
#import <Foundation/Foundation.h>

#ifndef MyTime_h
#define MyTime_h

@interface MyTime : NSObject

@property (nonatomic) int year;
@property (nonatomic) int month;
@property (nonatomic) int week;
@property (nonatomic) int day;
@property (nonatomic) int hour;
@property (nonatomic) int minute;
@property (nonatomic) int second;

- (long) exampleMethodOne: (long)numVar;
- (int) exampleMethodTwo;
- (NSString*) getDate;
- (NSString*) sayHello;

@end

#endif /* MyTime_h */
