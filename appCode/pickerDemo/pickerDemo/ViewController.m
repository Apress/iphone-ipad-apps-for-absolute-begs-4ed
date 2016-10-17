//
//  ViewController.m
//  pickerDemo
//
//  Created by Laurence Moroney on 7/30/13.
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

- (IBAction)dateChosen:(id)sender {
    NSDate *chosenDate = _dateChooser.date;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateStyle:NSDateFormatterFullStyle];
    _lblOutput.text = [dateFormat stringFromDate:chosenDate];
    
}
@end
