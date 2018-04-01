//
//  ViewController.m
//  SillyCalculator
//
//  Created by Admin on 01.04.2018.
//  Copyright © 2018 ASU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clear:(id)sender{
	n = 0;
	[self show];
}
- (IBAction)ac:(id)sender{
	n = 0;
	
	m = 0;
	
	operationEnter = NO;
	
	doubleOperation = NO;
	
	[self show];
}
- (IBAction)num:(id)sender{
	if (operationEnter) {
		m = n;
		n = 0;
		operationEnter = NO;
	}
	
	n = (n * 10.0f) + [sender tag];
	[self show];
	NSLog(@"%i", [sender tag]);
}
- (IBAction)operation:(id)sender{
	NSLog(@"%i", [sender tag]);
	
	if (doubleOperation && !operationEnter) {
		switch (operation) {
			case plus:
				n = m + n;
				break;
			case minus:
				n = m - n;
				break;
			case multi:
				n = m * n;
				break;
			case divi:
				n = m / n;
				break;
			default:
				break;
		}
	}
	m = n;
	
	operation = [sender tag];

	operationEnter = YES;

	doubleOperation = YES;
	[self show];
}
- (IBAction)inverse:(id)sender{
	n = -n;
	[self show];
}

- (void) show {
	NSString *str = [NSString stringWithFormat:@"%g",n];
	[ekran setText:str];
}

@end
