//
//  DGDistanceRequest.h
//  Pods
//
//  Created by Sam Kaufman on 9/11/15.
//
//

@import Foundation.NSObject;


typedef void(^DGDistanceRequestCallbackBlock)(NSArray *distances);


@interface DGDistanceRequest : NSObject

@property (readonly, nonatomic) NSArray *locationDescriptions;
@property (readonly, nonatomic) NSString *sourceDescription;
@property (copy, nonatomic) DGDistanceRequestCallbackBlock callback;

- (instancetype)initWithLocationDescriptions:(NSArray *)descriptions sourceDescription:(NSString *)sourceDesc;
- (void)start;

@end
