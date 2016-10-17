//
//  ViewController.m
//  stepperControlDemo
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

- (IBAction)stepperChanged:(id)sender {
    int numberOfEggs = _eggCounter.value;
    _lblOutput.text = [NSString stringWithFormat:@"You have %d eggs", numberOfEggs];
    
    
}
@end
