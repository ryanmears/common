//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Ryan Mears on 6/5/13.
//  Copyright (c) 2013 Mears. All rights reserved.
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        //And we want it to be as accurate as possible
        //regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
        
    }
    
    return self;
}

-(void)locationManager: (CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

-(void)locationManager: (CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

@end
