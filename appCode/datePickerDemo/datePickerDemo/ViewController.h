//
//  ViewController.h
//  datePickerDemo
//
//  Created by Laurence Moroney on 7/30/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)dateChosen:(id)sender;
@property (strong, nonatomic) IBOutlet UIDatePicker *dateChooser;
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;



@end
