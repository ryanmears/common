//
//  LotteryEntry.m
//  lottery
//
//  Created by Ryan Mears on 12/19/11.
//  Copyright (c) 2011 Apple Inc. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(id)init
{
//    return [self initWithEntryDate:[NSCalendarDate calendarDate]];
    
    [self dealloc];
    @throw [NSException exceptionWithName:@"BNRBadInitCall" reason:@"Initialize Lawsuit with initWithDefendant:" userInfo:nil];
    return nil;
}

-(id)initWithEntryDate:(NSCalendarDate *)theDate
{
    
    if (![super init])
        return nil;
    
    entryDate = theDate;
    firstNumber = random() % 100 + 1;
    secondNumber = random() % 100 + 1;
    
    return self;
}

-(void)setEntryDate:(NSCalendarDate *)date
{  
    entryDate = date;
}

-(NSCalendarDate *)entryDate
{
    return entryDate;
}

-(int)firstNumber
{
    return firstNumber;
}

-(int)secondNumber
{
    return secondNumber;
}

-(NSString *)description
{
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d", [entryDate descriptionWithCalendarFormat:@"%b %d %Y"], firstNumber, secondNumber];
    return result;
}

@end






