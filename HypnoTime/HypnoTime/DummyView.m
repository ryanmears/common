//
//  DummyView.m
//  HypnoTime
//
//  Created by Ryan Mears on 3/2/14.
//  Copyright (c) 2014 Ryan Mears. All rights reserved.
//

#import "DummyView.h"

@implementation DummyView

@synthesize viewColor;

-(id)initWithFrame:(CGRect)frame
{
    NSLog(@"DummyView initWithFrame");
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self setBackgroundColor:[UIColor greenColor]];
        
    }
    
    CGRect bounds = [self bounds];
    NSString *text = @"Hello World";
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    CGRect textRect;
    
    textRect.size = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue" size:28]}];
    textRect.origin.x = bounds.origin.x + bounds.size.width / 2.0;
    textRect.origin.y = bounds.origin.y + bounds.size.height / 2.0;
    
//    [[UIColor blackColor] setFill];
    
//    [text drawInRect:textRect withAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue" size:28]}];
    
    UILabel  * label = [[UILabel alloc] initWithFrame:CGRectMake(40, 70, 300, 50)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    label.textColor=[UIColor whiteColor];
    label.text = @"Telechargez et consultez les catalogues et les tarifs de la gamme Audi au format PDF";
    [self addSubview:label];
    
    NSLog(@"self %@", self);
    
    return self;
}

@end
