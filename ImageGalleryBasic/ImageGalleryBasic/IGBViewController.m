//
//  IGBViewController.m
//  ImageGalleryBasic
//
//  Created by Ryan Mears on 4/14/14.
//  Copyright (c) 2014 Ryan Mears. All rights reserved.
//  Comment for git testing

#import "IGBViewController.h"

@interface IGBViewController ()

@end

@implementation IGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"self.view bounds: %@", NSStringFromCGRect([self.view bounds]));

    NSArray *imageNames = @[@"Cloud Sea.jpg", @"cronkite.jpg", @"gull.jpg"];
    
    //Debug colors to identify view hierarchy
    self.view.backgroundColor = [UIColor greenColor];
    
    UIScrollView *imageGallery = [[UIScrollView alloc] init];
    imageGallery.frame = [[self view] bounds];
    imageGallery.contentSize = CGSizeMake(320*imageNames.count, 536);
    imageGallery.pagingEnabled = YES;
    [[self view] addSubview:imageGallery];
    
    //Loop through imageNames array
    //1. create image & image view
    //2. if this is the first image, set its frame to the upper left
    //3. if this is an additional image, calculate it's X coord based on its position in the array
    for (int i = 0; i < imageNames.count; i++)
    {
        UIImage *image = [UIImage imageNamed:imageNames[i]];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        
        if (i == 0)
        {
            imageView.frame = CGRectMake(0, 0, 320, 568);
        } else
        {
            imageView.frame = CGRectMake(320*i, 0, 320, 568);
        }
        
        [imageGallery addSubview:imageView];
        
    }
    
    NSLog(@"imageGallery.subviews: %@", imageGallery.subviews);
    
    //Debug colors to identify view hierarchy
    self.view.backgroundColor = [UIColor greenColor];
    imageGallery.backgroundColor = [UIColor blueColor];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
