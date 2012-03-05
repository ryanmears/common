//
//  main.m
//  lottery
//
//  Created by Ryan Mears on 12/11/11.
//  Copyright (c) 2011 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSCalendarDate *now = [[NSCalendarDate alloc] init ];
        
        srandom(time(NULL));
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        
        int i;
        for (i = 0; i < 10; i++) {
            NSCalendarDate *iWeeksFromNow;
            iWeeksFromNow = [now dateByAddingYears:0 months:0 days:(i *7) hours:0 minutes:0 seconds:0];
            
//          Create a new instance of Lottery Entry
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
            [newEntry setEntryDate:iWeeksFromNow];
            
//          Add the LotteryEntry object to the array
            [array addObject:newEntry];
            
            array = [[NSMutableArray alloc] init];
            NSLog(@"first item = %@", [array objectAtIndex:0]);
        }
        
        for (LotteryEntry *entryToPrint in array) {
            NSLog(@"%@", entryToPrint);
        }
                
    }
    return 0;
}

