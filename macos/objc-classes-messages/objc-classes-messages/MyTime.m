//
//  MyTime.m
//  objc-classes-messages
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "MyTime.h"

@implementation MyTime

- (long) exampleMethodOne: (long) numVar {
    return self.day + numVar;
}

- (int) exampleMethodTwo{
    return self.minute;
}

- (NSString*) sayHello{
    return @"Hello!";
}

- (NSString*) getDate{
    NSString *date = [NSString stringWithFormat: @"%d/%d/%d T %d:%d:%d",
                      self.month, self.day, self.year,
                      self.hour, self.minute, self.second
                      ];
    return date;
}

@end
