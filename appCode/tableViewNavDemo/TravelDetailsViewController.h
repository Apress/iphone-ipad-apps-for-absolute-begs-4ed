//
//  TravelDetailsViewController.h
//  tableViewNavDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TravelDetailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;
@property (nonatomic, strong) NSString *navItemName;
@end
