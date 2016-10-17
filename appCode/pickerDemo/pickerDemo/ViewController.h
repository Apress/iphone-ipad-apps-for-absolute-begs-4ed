//
//  ViewController.h
//  pickerDemo
//
//  Created by Laurence Moroney on 7/30/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *dateChooser;
- (IBAction)dateChosen:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;

@end
