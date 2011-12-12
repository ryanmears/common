//
//  main.m
//  lottery
//
//  Created by Ryan Mears on 12/11/11.
//  Copyright (c) 2011 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        
        for (i = 0; i < 10; i++) {
            NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
            [array addObject:newNumber];
        }
        
        for (i = 0; i < 10; i++) {
            NSNumber *numberToPrint = [array objectAtIndex:i];
            NSLog(@"The number at index %d is %@", i, numberToPrint);
        }
        
    }
    return 0;
}

