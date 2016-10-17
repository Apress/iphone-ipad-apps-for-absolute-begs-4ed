//
//  ViewController.h
//  mapControlTest
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *myMap;
@property (strong, nonatomic) IBOutlet UILabel *lblLat;
@property (strong, nonatomic) IBOutlet UILabel *lblLong;
- (IBAction)btnDropPin:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *styleChosen;
- (IBAction)btnChoose:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtAddress;
- (IBAction)btnFindAddress:(id)sender;



@end
