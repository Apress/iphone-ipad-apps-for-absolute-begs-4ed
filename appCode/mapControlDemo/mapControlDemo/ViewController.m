//
//  ViewController.m
//  mapControlDemo
//
//  Created by Laurence Moroney on 8/1/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"
#import "myPin.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _myMap.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    NSString *lat = [[NSString alloc] initWithFormat:@"%f",_myMap.region.center.latitude];
    _lblLatitude.text = lat;
    
    NSString *longt = [[NSString alloc] initWithFormat:@"%f",_myMap.region.center.longitude];
    _lblLongitude.text = longt;
    
}

- (IBAction)btnDrop:(id)sender {
    CLLocationCoordinate2D center = _myMap.region.center;
    myPin *thePin = [[myPin alloc] init];
    thePin.coordinate = center;
    thePin.title = @"Map Center";
    
    
    [_myMap addAnnotation:thePin];
}
@end
