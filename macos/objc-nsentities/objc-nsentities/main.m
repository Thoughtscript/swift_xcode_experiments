//
//  main.m
//  objc-nsentities
//
//  Created by Adam Gerard on 6/5/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // https://stackoverflow.com/questions/473758/what-does-the-ns-prefix-mean
    // NS stands for NeXTSTEP
    // https://eezytutorials.com/ios/nsset-by-example.php
    
    NSString * exampleString = @"I am an NSString!";
    
    // Multiple NSString
    NSString * exampleStringValues[3];
    exampleStringValues[0] = @"I";
    exampleStringValues[1] = @"am";
    exampleStringValues[2] = @"an NSString";
    
    // Float to NSString
    float feet = 6 / 12;
    NSString * exampleStringTwo = [NSString stringWithFormat:@"%f Feet", feet];
    
    // NSString to Float
    NSString *strNum = @"0.5";
    float example = 0.3 + [strNum floatValue];
    
    // NSArray
    NSArray * exampleArray = @[exampleString];
    
    // NSSet
    NSSet * exampleSetOne = [NSSet setWithObjects: exampleString, @"I am another NSString!", nil];
    
    // NSSet add
    NSSet * exampleSetTwo = [NSSet setWithObjects: exampleString, @"I am a third NSString!"];
    exampleSetTwo = [exampleSetTwo setByAddingObject: @"Another NSString!"];
    
    return 0;
}
