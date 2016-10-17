//
//  ViewController.m
//  tableViewNavDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"
#import "TravelDetailsViewController.h"
@interface ViewController ()

@end

@implementation ViewController
NSArray *navItems;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _placesTable.dataSource = self;
    _placesTable.delegate = self;
    navItems = [[NSArray alloc]initWithObjects:@"Continents",
                @"Countries", @"Cities", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [navItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"navCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [navItems objectAtIndex:indexPath.row];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showDetail"])
    {
        NSIndexPath *indexPath = [_placesTable indexPathForSelectedRow];
        TravelDetailsViewController *deetsController = segue.destinationViewController;
        deetsController.navItemName = [navItems objectAtIndex:indexPath.row];
    }
}

@end
