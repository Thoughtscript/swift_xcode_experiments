//
//  ViewController.m
//  obj-conversion-app
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *conversionSegment;
@property (weak, nonatomic) IBOutlet UILabel *outputDisplay;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)exit:(id)sender {
    exit(0);
}

- (IBAction)conversionHandler:(id)sender {
    /**
    NSString *input = self.inputField.text;
    float inches = [input floatValue];
    
    if (self.conversionSegment.selectedSegmentIndex == 0) {
        float feet = inches / 12;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Feet", feet];
    } else if (self.conversionSegment.selectedSegmentIndex == 1) {
        float meters = inches * 0.0254;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Meters", meters];
    } else {
        float miles = inches / 63360;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Miles", miles];
    }
    */
}
- (IBAction)convertButtonHandler:(id)sender {
    NSString *input = self.inputField.text;
    float inches = [input floatValue];
    
    if (self.conversionSegment.selectedSegmentIndex == 0) {
        float feet = inches / 12;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Feet", feet];
    } else if (self.conversionSegment.selectedSegmentIndex == 1) {
        float meters = inches * 0.0254;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Meters", meters];
    } else {
        float miles = inches / 63360;
        self.outputDisplay.text = [NSString stringWithFormat:@"%f Miles", miles];
    }
}

@end
