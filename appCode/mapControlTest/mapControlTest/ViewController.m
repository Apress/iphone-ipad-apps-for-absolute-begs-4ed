//
//  ViewController.m
//  mapControlTest
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
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
    _lblLat.text = lat;
    
    NSString *longt = [[NSString alloc] initWithFormat:@"%f",_myMap.region.center.longitude];
    _lblLong.text = longt;
    
}

- (IBAction)btnDropPin:(id)sender {
    CLLocationCoordinate2D center = _myMap.region.center;
    myPin *thePin = [[myPin alloc] init];
    thePin.coordinate = center;
    thePin.title = @"Map Center";
    
    
    [_myMap addAnnotation:thePin];
}

- (IBAction)btnChoose:(id)sender {
    switch(_styleChosen.selectedSegmentIndex)
    {
        case 0:
            _myMap.mapType = MKMapTypeStandard;
            break;
        case 1:
            _myMap.mapType = MKMapTypeSatellite;
            break;
        case 2:
            _myMap.mapType = MKMapTypeHybrid;
    }
}
- (IBAction)btnFindAddress:(id)sender {
    NSString *addrToFind = _txtAddress.text;
    CLGeocoder *geocoder = [[CLGeocoder alloc]init];
    [geocoder geocodeAddressString:addrToFind completionHandler:<#^(NSArray *placemarks, NSError *error)completionHandler#>]
}
@end
