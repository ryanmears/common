//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Ryan Mears on 2/18/14.
//  Copyright (c) 2014 Ryan Mears. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

-(void)loadView
{
    //Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    //Set it as *the* view of this view controller
    [self setView:v];
}

@end
