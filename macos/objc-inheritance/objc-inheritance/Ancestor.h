//
//  Ancestor.h
//  objc-inheritance
//
//  Created by Adam Gerard on 6/6/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//
#import <Foundation/Foundation.h>

#ifndef Ancestor_h
#define Ancestor_h

@interface Ancestor : NSObject

@property (nonatomic) int a;
@property (nonatomic) int b;

- (NSString*) sayHello;

@end

#endif /* Ancestor_h */
