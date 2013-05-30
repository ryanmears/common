//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Ryan Mears on 2/2/13.
//  Copyright (c) 2013 Ryan Mears. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(id)randomItem
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc]
                        initWithItemName:randomName
                        valueInDollars:randomValue
                        serialNumber:randomSerialNumber];
    
    return newItem;
}

-(NSString *)description
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
            itemName,
            serialNumber,
            valueInDollars,
            dateCreated];
    
    return descriptionString;
}

-(void)setContainedItem: (BNRItem *)i
{
    containedItem = i;
    [i setContainer:self];
}

-(BNRItem *)containedItem
{
    return containedItem;
}

-(void)setContainer:(BNRItem *)i
{
    container = i;
}

-(BNRItem *)container
{
    return container;
}

-(id)init
{
    return [self initWithItemName:@"item" valueInDollars:0 serialNumber:@""];
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //call the superclass's designated initializer
    self = [super init];
    
    if(self) {
        //Give the instance variables initial values
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
    
    //Return the address of the newly initialized object
    return self;
}

-(id)initWithItemName:(NSString *)name andSerialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
}

-(void)setItemName:(NSString *)str
{
    itemName = str;
}

-(NSString *)itemName
{
    return itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

-(void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}

@end
