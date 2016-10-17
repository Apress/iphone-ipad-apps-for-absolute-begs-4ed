//
//  ViewController.h
//  webViewDemo
//
//  Created by Laurence Moroney on 8/2/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UITextField *txtAddress;
- (IBAction)AddressChanged:(id)sender;
- (IBAction)GoPressed:(id)sender;

@end
