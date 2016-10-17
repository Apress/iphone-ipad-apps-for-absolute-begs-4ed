//
//  ViewController.h
//  switchControlDemo
//
//  Created by Laurence Moroney on 7/29/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISwitch *firstSwitch;
- (IBAction)switchChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;

@end
