//
//  ViewController.m
//  objc-ios-distance-calc-app
//
//  Created by Adam Gerard on 6/2/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "ViewController.h"
#import "DistanceGetter/DGDistanceRequest.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *startLocationInput;
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitSegmentSelect;
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UITextField *inputFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *inputFieldTwo;
@property (weak, nonatomic) IBOutlet UITextField *inputFieldThree;
@property (weak, nonatomic) IBOutlet UITextField *inputFieldFour;

@end

@implementation ViewController

- (IBAction)exitHandler:(id)sender {
    exit(0);
}

- (IBAction)handleDistances:(id)sender {
    
    NSArray *dests = @[self.inputFieldOne.text,
                       self.inputFieldTwo.text,
                       self.inputFieldThree.text,
                       self.inputFieldFour.text];
    @try {
    // initialize DGDistanceRequest pod
    DGDistanceRequest *req = [[DGDistanceRequest alloc] initWithLocationDescriptions:dests sourceDescription:self.startLocationInput.text];
    req.callback = ^(NSArray *distances) {
        
        float distanceOne = [distances[0] floatValue];
        float distanceTwo = [distances[1] floatValue];
        float distanceThree = [distances[2] floatValue];
        float distanceFour = [distances[3] floatValue];
        
        if (self.unitSegmentSelect.selectedSegmentIndex == 0) {
            self.labelOne.text = [NSString stringWithFormat: @"%f M", distanceOne];
            self.labelTwo.text = [NSString stringWithFormat: @"%f M", distanceTwo];
            self.labelThree.text = [NSString stringWithFormat: @"%f M", distanceThree];
            self.labelFour.text = [NSString stringWithFormat: @"%f M", distanceFour];
        } else if (self.unitSegmentSelect.selectedSegmentIndex == 1) {
            self.labelOne.text = [NSString stringWithFormat: @"%f KM", distanceOne * 1000];
            self.labelTwo.text = [NSString stringWithFormat: @"%f KM", distanceTwo * 1000];
            self.labelThree.text = [NSString stringWithFormat: @"%f KM", distanceThree * 1000];
            self.labelFour.text = [NSString stringWithFormat: @"%f KM", distanceFour * 1000];
        } else {
            self.labelOne.text = [NSString stringWithFormat: @"%f Mi", distanceOne * 0.0006213712];
            self.labelTwo.text = [NSString stringWithFormat: @"%f Mi", distanceTwo * 0.0006213712];
            self.labelThree.text = [NSString stringWithFormat: @"%f Mi", distanceThree * 0.0006213712];
            self.labelFour.text = [NSString stringWithFormat: @"%f Mi", distanceFour * 0.0006213712];
        }
        
    };
    [req start];

    } @catch (NSException *exception) {
        printf("Exception encountered!");
    } 
}

@end
