//
//  TravelDetailsViewController.m
//  tableViewNavDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "TravelDetailsViewController.h"

@implementation TravelDetailsViewController
@synthesize navItemName;
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    _lblOutput.text = navItemName;
}
@end
