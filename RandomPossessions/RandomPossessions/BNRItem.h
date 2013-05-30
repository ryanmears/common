//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Ryan Mears on 2/2/13.
//  Copyright (c) 2013 Ryan Mears. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+(id)randomItem;

-(id)initWithItemName:(NSString *)name
       valueInDollars:(int)value
         serialNumber:(NSString *)sNumber;

-(id)initWithItemName:(NSString *)name
      andSerialNumber:(NSString *)sNumber;

- (void) setItemName:( NSString *) str;
- (NSString *) itemName;

- (void) setSerialNumber:( NSString *) str;
- (NSString *) serialNumber;

- (void) setValueInDollars:( int) i;
- (int) valueInDollars;

- (NSDate *) dateCreated;

@end
