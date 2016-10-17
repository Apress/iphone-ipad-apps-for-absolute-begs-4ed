//
//  ViewController.m
//  tableViewDemo
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *teamsArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _teamsTable.dataSource = self;
    _teamsTable.delegate = self;
    teamsArray = [[NSArray alloc]initWithObjects:
                  @"Manchester United",
                  @"Manchester City",
                  @"Arsenal",
                  @"Liverpool",
                  @"Chelsea",
                  @"Cardiff City",
                  @"Aston Villa",
                  @"Crystal Palace",
                  @"Everton",
                  @"Fulham",
                  @"Hull City",
                  @"Newcastle United",
                  @"Norwich City",
                  @"Southampton",
                  @"Stoke City",
                  @"Sunderland",
                  @"Swansea City",
                  @"Tottenham Hotspur",
                  @"West Bromwich Albion",
                  @"West Ham United", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [teamsArray count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"TeamCell";
    
    UITableViewCell *thisCell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(thisCell==nil)
    {
        thisCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    thisCell.textLabel.text  = [teamsArray objectAtIndex:indexPath.row];
    return thisCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    _lblOutput.text = [teamsArray objectAtIndex:indexPath.row];
}

@end
