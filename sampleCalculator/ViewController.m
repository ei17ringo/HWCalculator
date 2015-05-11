//
//  ViewController.m
//  sampleCalculator
//
//  Created by Eriko Ichinohe on 2015/04/07.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

const int ADDCODE = 1;
const int SUBCODE = 2;
const int MULCODE = 3;
const int DIVCODE = 4;
const int NANCODE = -1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //初期値代入
    _inputFirtst = 0;
    _inputSecond = 0;
    _calcCode = NANCODE;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapOne:(id)sender {
    int pushNumber = 1;
    [self tapNumber:pushNumber];
}

- (IBAction)tapTwo:(id)sender {
    int pushNumber = 2;
    [self tapNumber:pushNumber];
}

- (IBAction)tapThree:(id)sender {
    int pushNumber = 3;
    [self tapNumber:pushNumber];
}

- (IBAction)tapFour:(id)sender {
    int pushNumber = 4;
    [self tapNumber:pushNumber];
}

- (IBAction)tapFive:(id)sender {
    int pushNumber = 5;
    [self tapNumber:pushNumber];
}

- (IBAction)tapSix:(id)sender {
    int pushNumber = 6;
    [self tapNumber:pushNumber];
}

- (IBAction)tapSeven:(id)sender {
    int pushNumber = 7;
    [self tapNumber:pushNumber];
}

- (IBAction)tapEight:(id)sender {
    int pushNumber = 8;
    [self tapNumber:pushNumber];
}

- (IBAction)tapNine:(id)sender {
    int pushNumber = 9;
    [self tapNumber:pushNumber];
}

- (IBAction)tapZero:(id)sender {
    int pushNumber = 0;
    [self tapNumber:pushNumber];
}

- (IBAction)tapDevide:(id)sender {
    _calcCode = DIVCODE;
    if (_inputSecond != 0) {
        _inputFirtst = _inputFirtst / _inputSecond;
    }
    _inputSecond = 0;
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",_inputFirtst];
}

- (IBAction)tapMultiply:(id)sender {
    _calcCode = MULCODE;
    if (_inputSecond != 0) {
        _inputFirtst = _inputFirtst * _inputSecond;
    }
    _inputSecond = 0;
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",_inputFirtst];
}

- (IBAction)tapSubstract:(id)sender {
    _calcCode = SUBCODE;
    _inputFirtst = _inputFirtst - _inputSecond;
    _inputSecond = 0;
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",_inputFirtst];
}

- (IBAction)tapAdd:(id)sender {
    _calcCode = ADDCODE;
    _inputFirtst = _inputFirtst + _inputSecond;
    _inputSecond = 0;
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",_inputFirtst];
    
}

- (IBAction)tapResult:(id)sender {
    int Result = 0;
    
    switch (_calcCode) {
        case ADDCODE:
            Result = _inputFirtst + _inputSecond;
            break;
        case SUBCODE:
            Result = _inputFirtst - _inputSecond;
            break;
        case MULCODE:
            Result = _inputFirtst * _inputSecond;
            break;
        case DIVCODE:
            if (_inputSecond == 0) {
                Result = 0;
            }else{
                Result = _inputFirtst / _inputSecond;
            }
            break;
        default:
            break;
    }
    
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",Result];
    _inputFirtst = Result;
    _inputSecond = 0;
    _calcCode = NANCODE;
}

//数値のボタンが押された時の関数
- (void)tapNumber:(int)pushedNumber{

    int viewNumber = 0;
    
    if (_calcCode == NANCODE) {
        _inputFirtst = _inputFirtst*10 + pushedNumber;
        viewNumber = _inputFirtst;
    }else{
        _inputSecond = _inputSecond*10 + pushedNumber;
        viewNumber = _inputSecond;
    }
    
    self.resultLabel.text = [NSString stringWithFormat:@"%d",viewNumber];
    
}

- (IBAction)tapClear:(id)sender {
    //初期値代入
    _inputFirtst = 0;
    _inputSecond = 0;

    self.resultLabel.text = @"0";
}
@end
