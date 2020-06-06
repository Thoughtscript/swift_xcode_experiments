//
//  Descendant.h
//  objc-inheritance
//
//  Created by Adam Gerard on 6/6/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Ancestor.h"

#ifndef Descendant_h
#define Descendant_h

@interface Descendant : Ancestor

@property (nonatomic) int c;

- (NSString*) sayGoodbye;

@end

#endif /* Descendant_h */
