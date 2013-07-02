//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Ryan Mears on 6/11/13.
//  Copyright (c) 2013 Ryan Mears. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
