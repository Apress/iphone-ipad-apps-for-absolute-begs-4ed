//
//  ViewController.m
//  sliderControlDemo
//
//  Created by Laurence Moroney on 7/29/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)sliderChanged:(id)sender {
    NSString *value = [NSString stringWithFormat:@"%f", _valueSlider.value];
    _lblOutput.text = value;
    
}
@end
