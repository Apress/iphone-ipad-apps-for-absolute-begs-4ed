//
//  ViewController.m
//  switchControlDemo
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

- (IBAction)switchChanged:(id)sender {
    if(_firstSwitch.on)
    {
        _lblOutput.text = @"My first switch is on";
    }
    else
    {
        _lblOutput.text = @"My first switch is off";
    }
}
@end
