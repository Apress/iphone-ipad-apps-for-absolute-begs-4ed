//
//  myPin.h
//  mapControlTest
//
//  Created by Laurence Moroney on 7/31/13.
//  Copyright (c) 2013 Laurence Moroney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface myPin : NSObject<MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *title;
}

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@end
