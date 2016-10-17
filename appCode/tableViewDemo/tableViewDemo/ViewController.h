//
//  ViewController.h
//  tableViewDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *teamsTable;
@property (strong, nonatomic) IBOutlet UILabel *lblOutput;



@end
