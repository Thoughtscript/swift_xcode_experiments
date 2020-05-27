//
//  ViewController.m
//  objc-single-view-test-app
//
//  Created by Adam Gerard on 5/25/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//be careful to only associate the following variable (if you accidently associate an object with several it can cause a problem)
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)buttonHandler:(id)sender {
    //text change example with string literal
    //self.testLabel.text = @"It worked!";
    
    //int and float conversion
    int height_feet = 5;
    int height_inches = 11;
    float height_cm = ((height_feet * 12.0) * height_inches) * 2.54;
    self.testLabel.text =  [NSString stringWithFormat:@"%f", height_cm];
    
}

@end
