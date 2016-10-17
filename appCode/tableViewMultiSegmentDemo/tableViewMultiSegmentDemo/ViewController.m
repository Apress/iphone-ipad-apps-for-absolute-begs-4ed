//
//  ViewController.m
//  tableViewMultiSegmentDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *countriesArray;
NSArray *sportsArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _teamsTable.delegate = self;
    _teamsTable.dataSource = self;
    
    countriesArray = [[NSArray alloc] initWithObjects:@"USA", @"Canada", @"Mexico", nil];
    sportsArray = [[NSArray alloc] initWithObjects:@"Baseball", @"Football", @"Hockey", @"Soccer", @"Basketball", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section==0)
    {
        return [countriesArray count];
        
    }
    else
    {
        return [sportsArray count];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"MyCell";
    UITableViewCell *thisCell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(thisCell==nil)
    {
        thisCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    if(indexPath.section==0)
    {
        thisCell.textLabel.text  = [countriesArray objectAtIndex:indexPath.row];
        
    }
    else
    {
        thisCell.textLabel.text  = [sportsArray objectAtIndex:indexPath.row];
        
    }
    return thisCell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section==0)
    {
        _lblOutlet.text = [countriesArray objectAtIndex:indexPath.row];
        
    }
    else
    {
        _lblOutlet.text = [sportsArray objectAtIndex:indexPath.row];
    }
}

@end
