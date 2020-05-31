//
//  ViewController.m
//  objc-ios-currency-converter
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *euroField;
@property (weak, nonatomic) IBOutlet UILabel *krwField;
@property (weak, nonatomic) IBOutlet UILabel *yenField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)exitHandler:(id)sender {
    exit(0);
}
- (IBAction)inputHandler:(id)sender {}

- (IBAction)conversionHandler:(id)sender {
    float usd = [self.input.text floatValue];
    
    float krw = usd * 1231.57;
    float yen = usd * 107.81;
    float euro = usd * 0.90;
    
    self.euroField.text = [NSString stringWithFormat:@"€ %f", euro];
    self.krwField.text = [NSString stringWithFormat:@"₩ %f", krw];
    self.yenField.text = [NSString stringWithFormat:@"¥ %f", yen];
}


@end
