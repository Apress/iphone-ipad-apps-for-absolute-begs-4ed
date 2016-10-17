//
//  ViewController.m
//  downloadImageTest
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGetImage:(id)sender {
    NSString *urlString = @"http://mlk-quotes.appspot.com/mlk.jpg";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: url];
    _imgPic.image = [UIImage imageWithData: imageData];

}
@end
