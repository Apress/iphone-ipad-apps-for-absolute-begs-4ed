//
//  ViewController.h
//  sliderControlDemo
//
//  Created by Laurence Moroney on 7/29/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//




#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;
- (IBAction)sliderChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *valueSlider;

@end
