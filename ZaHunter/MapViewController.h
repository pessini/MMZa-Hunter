//
//  MapViewController.h
//  ZaHunter
//
//  Created by Leandro Pessini on 3/25/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "ViewController.h"
#import "Pizzeria.h"


@interface MapViewController : ViewController

@property NSMutableArray *pizzerias;
@property Pizzeria *mapPizzeria;
@property CLLocation *userLocation;

@end
