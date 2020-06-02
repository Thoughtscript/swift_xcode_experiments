//
//  ViewController.m
//  objc-ios-currency-converter
//
//  Created by Adam Gerard on 5/30/20.
//  Copyright © 2020 Adam Gerard. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController ()
@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *euroField;
@property (weak, nonatomic) IBOutlet UILabel *gpbField;
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
    
    // Make call using CRC cocoapod
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    [self.req start];
    
}

- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    float usd = [self.input.text floatValue];
    
    float gbp = usd * currencies.GBP;
    float yen = usd * currencies.JPY;
    float euro = usd * currencies.EUR;
    
    self.euroField.text = [NSString stringWithFormat:@"€ %f", euro];
    self.gpbField.text = [NSString stringWithFormat:@"£ %f", gbp];
    self.yenField.text = [NSString stringWithFormat:@"¥ %f", yen];
    
}


@end
