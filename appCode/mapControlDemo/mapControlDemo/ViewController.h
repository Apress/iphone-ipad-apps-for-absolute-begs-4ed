//
//  ViewController.h
//  mapControlDemo
//
//  Created by Laurence Moroney on 8/1/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *lblLatitude;
@property (strong, nonatomic) IBOutlet UILabel *lblLongitude;
@property (strong, nonatomic) IBOutlet MKMapView *myMap;
- (IBAction)btnDrop:(id)sender;

@end
