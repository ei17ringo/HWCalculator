//
//  ViewController.h
//  sampleCalculator
//
//  Created by Eriko Ichinohe on 2015/04/07.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int _inputFirtst;
    int _inputSecond;
    int _calcCode;
}
extern const int ADDCODE;
extern const int SUBCODE;
extern const int MULCODE;
extern const int DIVCODE;
extern const int NANCODE;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UIButton *btnOne;

@property (weak, nonatomic) IBOutlet UIButton *btnTwo;

@property (weak, nonatomic) IBOutlet UIButton *btnThree;

@property (weak, nonatomic) IBOutlet UIButton *btnFour;

@property (weak, nonatomic) IBOutlet UIButton *btnFive;

@property (weak, nonatomic) IBOutlet UIButton *btnSix;

@property (weak, nonatomic) IBOutlet UIButton *btnSeven;

@property (weak, nonatomic) IBOutlet UIButton *btnEight;

@property (weak, nonatomic) IBOutlet UIButton *btnNine;

@property (weak, nonatomic) IBOutlet UIButton *btnZero;

@property (weak, nonatomic) IBOutlet UIButton *btnMultiply;

@property (weak, nonatomic) IBOutlet UIButton *btnDevide;

@property (weak, nonatomic) IBOutlet UIButton *btnSubtract;

@property (weak, nonatomic) IBOutlet UIButton *btnAdd;

@property (weak, nonatomic) IBOutlet UIButton *btnResult;

- (IBAction)tapOne:(id)sender;

- (IBAction)tapTwo:(id)sender;

- (IBAction)tapThree:(id)sender;

- (IBAction)tapFour:(id)sender;

- (IBAction)tapFive:(id)sender;

- (IBAction)tapSix:(id)sender;

- (IBAction)tapSeven:(id)sender;

- (IBAction)tapEight:(id)sender;

- (IBAction)tapNine:(id)sender;

- (IBAction)tapZero:(id)sender;

- (IBAction)tapDevide:(id)sender;

- (IBAction)tapMultiply:(id)sender;

- (IBAction)tapSubstract:(id)sender;

- (IBAction)tapAdd:(id)sender;

- (IBAction)tapResult:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btnClear;

- (IBAction)tapClear:(id)sender;

@end

