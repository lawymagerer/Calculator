//
//  CalcViewController.h
//  Calculator
//
//  Created by ilabafrica on 6/30/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calcDisplay;

@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation;
@property (nonatomic) int final;

- (IBAction)btnPress1:(UIButton *)sender;
- (IBAction)btnPress2:(UIButton *)sender;
- (IBAction)btnPress3:(UIButton *)sender;
- (IBAction)btnPress4:(UIButton *)sender;
- (IBAction)btnPress5:(UIButton *)sender;
- (IBAction)btnPress6:(UIButton *)sender;
- (IBAction)btnPress7:(UIButton *)sender;
- (IBAction)btnPress8:(UIButton *)sender;
- (IBAction)btnPress9:(UIButton *)sender;
- (IBAction)btnPress0:(UIButton *)sender;
- (IBAction)additionPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)mulitiplicationPressed:(id)sender;
- (IBAction)divisionPressed:(id)sender;
- (IBAction)equalPressed:(UIButton *)sender;
- (IBAction)clear:(id)sender;


@end
