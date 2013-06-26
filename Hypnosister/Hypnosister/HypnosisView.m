//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Ryan Mears on 6/11/13.
//  Copyright (c) 2013 Ryan Mears. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

-(void)drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    //Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    NSLog(@"center: x %f, y %f", center.x, center.y);
    
    //The radius of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    //The thickness of the line should be 10 points wide
    CGContextSetLineWidth(ctx, 10);
    
    //The color of the line should be gray (red/green/blue = 0.6, alpha = 1.0);
    [[UIColor redColor] setStroke];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        //add a path to the context
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        
        //perform drawing operation
        CGContextStrokePath(ctx);
    }
    
    NSString *text = @"Ch' gettin' sleepy dawg";
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    CGRect textRect;
    
    //How big is the string when drawn in this font?
    textRect.size = [text sizeWithFont:font];
    
    //Let's pu that string in the center of the view
    textRect.origin.x = center.x - textRect.size.width / 2.0;
    textRect.origin.y = center.y - textRect.size.width / 2.0;
    
    //Set the fill color of the current context to black
    [[UIColor blackColor] setFill];
    
    //The shadow will move 4 points to the right and 3 points down from the text
    CGSize offset = CGSizeMake(4, 3);
    
    //The shadow will be dark gray in color
    CGColorRef color = [[UIColor darkGrayColor] CGColor];
    
    //Set the shadow of the context with these parameters,
    //all the subsequent drawing will be shadowed
    CGContextSetShadowWithColor(ctx, offset, 2.0, color);
    
    //Draw the string
    [text drawInRect:textRect withFont:font];
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

@end