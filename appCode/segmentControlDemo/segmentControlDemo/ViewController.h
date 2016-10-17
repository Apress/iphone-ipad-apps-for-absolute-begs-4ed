//
//  ViewController.h
//  segmentControlDemo
//
//  Created by Laurence Moroney on 7/29/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)colorChosen:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorChooser;

@end
