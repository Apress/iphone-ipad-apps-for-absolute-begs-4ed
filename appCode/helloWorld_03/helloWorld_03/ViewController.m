//
//  ViewController.m
//  helloWorld_03
//
//  Created by Laurence Moroney on 7/23/13.
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


- (IBAction)btnClick:(id)sender {
    if(ruaGeek)
    {
        _geekLabel.text=@"No, you're not!";
        ruaGeek = false;
    }
    else
    {
        _geekLabel.text=@"Definitely a geek!";
        ruaGeek = true;
    }
}
@end
