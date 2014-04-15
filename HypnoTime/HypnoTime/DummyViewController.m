//
//  DummyViewController.m
//  HypnoTime
//
//  Created by Ryan Mears on 3/2/14.
//  Copyright (c) 2014 Ryan Mears. All rights reserved.
//

#import "DummyViewController.h"
#import "DummyView.h"

@implementation DummyViewController

-(void)loadView
{
    NSLog(@"dummy loadView - self: %@", self);
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    DummyView *view = [[DummyView alloc] initWithFrame:frame];
    
    [self setView:view];
    
}

@end
