//
//  ViewController.h
//  quotesAppTest
//
//  Created by Laurence Moroney on 8/2/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblQuote;
- (IBAction)btnGetQuote:(id)sender;

@end
