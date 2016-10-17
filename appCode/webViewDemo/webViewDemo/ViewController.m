//
//  ViewController.m
//  webViewDemo
//
//  Created by Laurence Moroney on 8/2/13.
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
    _txtAddress.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)AddressChanged:(id)sender {
    [self CallWeb];
}

- (IBAction)GoPressed:(id)sender {
    [self CallWeb];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self CallWeb];
    return true;
}

-(void)CallWeb
{
    NSString *addr = _txtAddress.text;
    [_txtAddress resignFirstResponder];
    NSString *urlString;
    addr = [addr lowercaseString];
    if([addr rangeOfString:@"http://"].location == NSNotFound)
    {
        urlString = @"http://";
        urlString = [urlString stringByAppendingString:addr];
    }
    else
    {
        urlString = addr;
    }
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *theRequest = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:theRequest];
}
@end
