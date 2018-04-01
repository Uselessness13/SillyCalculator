//
//  ViewController.h
//  SillyCalculator
//
//  Created by Admin on 01.04.2018.
//  Copyright © 2018 ASU. All rights reserved.
//

#import <UIKit/UIKit.h>
double n,m;
NSInteger operation;
BOOL operationEnter;
BOOL doubleOperation;
enum {plus = 101, minus = 102, multi = 103, divi = 104};
@interface ViewController : UIViewController {
	IBOutlet UILabel *ekran;
}

- (IBAction)clear:(id)sender;
- (IBAction)ac:(id)sender;
- (IBAction)num:(id)sender;
- (IBAction)operation:(id)sender;
- (IBAction)inverse:(id)sender;

@end

