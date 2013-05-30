//
//  main.m
//  RandomPossessions
//
//  Created by Ryan Mears on 2/2/13.
//  Copyright (c) 2013 Ryan Mears. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }

        items = nil;
        
        BNRContainer *myContainer = [[BNRContainer alloc] init];
        
        NSLog(@"Whazbedis? %@", [myContainer description]);
    }
    return 0;
}
