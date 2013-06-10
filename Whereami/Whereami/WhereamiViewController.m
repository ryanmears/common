//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Ryan Mears on 6/5/13.
//  Copyright (c) 2013 Mears. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

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
        
    }
    
    return self;
}

-(void)viewDidLoad
{
    [worldView setShowsUserLocation:YES];
}

-(void)locationManager: (CLLocationManager *)manager
   didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
    
    //How many seconds ago was this location created?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    //CLLocationManager will return the last found location of the device first,
    //you don't want that data in this case. If this location was made more than
    //3 minutes ago, ignore it.
    if (t < -180) {
        //This is cached data, you don't want it, keep looking
        return;
    }
    
    [self foundLocation:newLocation];
}

-(void)locationManager: (CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

-(void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

-(void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    //Create an instance of BNRMapPoint with the current data
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
    
    //Add to MapView
    [worldView addAnnotation:mp];
    
    //Zoom to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    
    [worldView setRegion:region animated:YES];
    
    //Reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

-(IBAction)mapTypeSelect:(id)sender
{
    int clickedSegment = [sender selectedSegmentIndex];
    
    switch (clickedSegment) {
        case 0:
            [worldView setMapType:MKMapTypeStandard];
            break;
            
        case 1:
            [worldView setMapType:MKMapTypeSatellite];
            break;
            
        case 2:
            [worldView setMapType:MKMapTypeHybrid];
            break;
            
        default:
            break;
    }
}

//MapView Delegate Methods
//==========================================================================================
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    NSLog(@"MapView didUpdateUserLocation");
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

//UITextField Delegate Methods
//==========================================================================================
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    
    [textField resignFirstResponder];
    
    return YES;
}

-(void)dealloc
{
    [locationManager setDelegate:nil];
}

@end
