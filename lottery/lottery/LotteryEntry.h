//
//  LotteryEntry.h
//  lottery
//
//  Created by Ryan Mears on 12/19/11.
//  Copyright (c) 2011 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(void)setEntryDate:(NSCalendarDate *)date;
-(NSCalendarDate *)entryDate;
-(int)firstNumber;
-(int)secondNumber;
-(id)initWithEntryDate:(NSCalendarDate *)theDate;

@end
