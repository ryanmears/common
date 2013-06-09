//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Ryan Mears on 6/9/13.
//  Copyright (c) 2013 Mears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
    
}

//A new designated initializer for instances of BNRMapPoint
-(id)initWithCoordinate: (CLLocationCoordinate2D)c title:(NSString *)t;

//Required property from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

//Optional property from MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
