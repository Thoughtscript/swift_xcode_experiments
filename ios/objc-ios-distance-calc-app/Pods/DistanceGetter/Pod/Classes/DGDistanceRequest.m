//
//  DGDistanceRequest.m
//  Pods
//
//  Created by Sam Kaufman on 9/11/15.
//
//

@import Foundation;
@import CoreLocation;
@import MapKit;
#import "DGDistanceRequest.h"


@interface DGDistanceRequest ()

@property (strong, nonatomic) NSArray *locationDescriptions;
@property (strong, nonatomic) NSString *sourceDescription;

@end


@implementation DGDistanceRequest

- (instancetype)init
{
    NSString *reason = [NSString stringWithFormat:@"don't use %@; use %@ instead", NSStringFromSelector(@selector(init)), NSStringFromSelector(@selector(initWithLocationDescriptions:sourceDescription:))];
    @throw [NSException exceptionWithName:NSGenericException reason:reason userInfo:nil];
}

- (instancetype)initWithLocationDescriptions:(NSArray *)descriptions sourceDescription:(NSString *)sourceDesc
{
    // Do some overly parental type-checking
    [descriptions enumerateObjectsUsingBlock:^(id d, NSUInteger idx, BOOL *stop) {
        if (![d isKindOfClass:[NSString class]]) {
            NSString *reason = [NSString stringWithFormat:@"%@ at index %lu is not an NSString", d, (unsigned long)idx];
            @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
        }
    }];
    
    // Init
    self = [super init];
    if (self) {
        _sourceDescription = sourceDesc;
        _locationDescriptions = descriptions;
    }
    return self;
}

- (void)start {
    
    // Response buffers
    NSArray *descs = self.locationDescriptions;
    __block NSUInteger outstandingRequests = [descs count];
    NSMutableArray *responses = [NSMutableArray arrayWithCapacity:[descs count]];
    for (int i = 0; i < [descs count]; i++)
        [responses addObject:@(-1)];
    
    // Kick off source query
    MKLocalSearchRequest *sourceReq = [MKLocalSearchRequest new];
    sourceReq.naturalLanguageQuery = self.sourceDescription;
    
    MKLocalSearch *sourceSearch = [[MKLocalSearch alloc] initWithRequest:sourceReq];

    [sourceSearch startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
 
        if (error || ![response.mapItems count] || !outstandingRequests) {
            if (self.callback) {
                self.callback(responses);
                self.callback = nil;
            }
            return;
        }
        
        MKMapItem *sourceItem = response.mapItems[0];
        CLLocation *sourceLoc = sourceItem.placemark.location;
        
        // Kick off destination queries
        [descs enumerateObjectsUsingBlock:^(id desc, NSUInteger idx, BOOL *stop) {
            MKLocalSearchRequest *req = [MKLocalSearchRequest new];
            req.naturalLanguageQuery = desc;
            
            MKLocalSearch *search = [[MKLocalSearch alloc] initWithRequest:req];
            [search startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
                if (!error && [response.mapItems count]) {
                    MKMapItem *firstItem = response.mapItems[0];
                    CLLocation *firstLoc = firstItem.placemark.location;
                    CLLocationDistance distance = [firstLoc distanceFromLocation:sourceLoc];
                    [responses setObject:@(distance) atIndexedSubscript:idx];
                }
                outstandingRequests--;
                
                // If this was the last one, let's send our response array to the caller
                if (!outstandingRequests && self.callback) {
                    self.callback([NSArray arrayWithArray:responses]);
                    self.callback = nil;
                }
            }];
        }];
    }];
}

@end
