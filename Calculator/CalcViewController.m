//
//  CalcViewController.m
//  Calculator
//
//  Created by ilabafrica on 6/30/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "CalcViewController.h"

@interface CalcViewController ()

@end

@implementation CalcViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int answer=0;

- (IBAction)btnPress1:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress2:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
    
}

- (IBAction)btnPress3:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress4:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress5:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
   
}

- (IBAction)btnPress6:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
    
}

- (IBAction)btnPress7:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress8:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress9:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)btnPress0:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber)
    {
        self.calcDisplay.text = [self.calcDisplay.text stringByAppendingString:number];
    } else
    {
        self.calcDisplay.text = number;
        self.typingNumber = YES;
    }
}

- (IBAction)additionPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calcDisplay.text intValue];
    answer=answer + self.firstNumber;
    self.operation = [sender currentTitle];
}

- (IBAction)minusPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calcDisplay.text intValue];
    
    self.operation = [sender currentTitle];
}

- (IBAction)mulitiplicationPressed:(id)sender {
    
    self.typingNumber = NO;
    self.firstNumber = [self.calcDisplay.text intValue];
    
    self.operation = [sender currentTitle];
}

- (IBAction)divisionPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calcDisplay.text intValue];
    self.operation = [sender currentTitle];
}

- (IBAction)equalPressed:(UIButton *)sender {
    self.typingNumber = NO;
    self.secondNumber = [self.calcDisplay.text intValue];
    
    int result = 0;
    
    if ([self.operation isEqualToString:@"+"])
    {
        result = answer + self.secondNumber;
        
        
    }
    else if ([self.operation isEqualToString:@"-"])
        
    {   
        result = self.firstNumber - self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"x"])
    {
        result = self.firstNumber * self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"/"])
    {
        if(!self.secondNumber==0){
        	result = self.firstNumber / self.secondNumber;
        }else{
            result=0;
        }
        
    }


    
    self.calcDisplay.text = [NSString stringWithFormat:@"%d", result];
    answer=0;
}

- (IBAction)clear:(id)sender {
    self.firstNumber = 0;
    self.secondNumber = 0;
    answer=0;
    self.calcDisplay.text = [NSString stringWithFormat:@"%d", 0];
}
@end
