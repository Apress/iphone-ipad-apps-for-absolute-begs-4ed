//
//  ViewController.m
//  uiPickerDemo
//
//  Created by Laurence Moroney on 7/30/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *teamNames;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    teamNames = [[NSArray alloc] initWithObjects:@"Liverpool",
                 @"Manchester United",
                 @"Manchester City",
                 @"Cardiff City",
                 @"Arsenal",
                 @"Chelsea",
                 @"Spurs", nil];
    _myPicker.delegate = self;
    _myPicker.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSInteger nReturn;
    switch(component)
    {
        case 0:
            nReturn = [teamNames count];
            break;
        case 1:
            nReturn = [teamPredictions]
    }
    return [teamNames count];
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [teamNames objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
}
@end
