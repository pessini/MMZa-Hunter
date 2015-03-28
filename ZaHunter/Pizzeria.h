//
//  Pizzeria.h
//  ZaHunter
//
//  Created by Leandro Pessini on 3/28/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface Pizzeria : MKPointAnnotation

@property MKPointAnnotation *pointAnnotation;
@property CLLocationDistance locationDistance;
@property MKMapItem *mapItem;
@property NSString *locationAddress;
@property MKRoute *routeDetails;
@property MKPlacemark *placemark;
@property NSString *rating;

@end
