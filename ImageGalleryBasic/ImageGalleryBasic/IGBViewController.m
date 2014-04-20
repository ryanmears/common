//
//  IGBViewController.m
//  ImageGalleryBasic
//
//  Created by Ryan Mears on 4/14/14.
//  Copyright (c) 2014 Ryan Mears. All rights reserved.
//

#import "IGBViewController.h"

@interface IGBViewController ()

@end

@implementation IGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"self.view bounds: %@", NSStringFromCGRect([self.view bounds]));
    
    //Debug colors to identify view hierarchy
    self.view.backgroundColor = [UIColor greenColor];
    
    UIScrollView *imageGallery = [[UIScrollView alloc] init];
    imageGallery.frame = [[self view] bounds];
    imageGallery.contentSize = CGSizeMake(640, 536);
    imageGallery.pagingEnabled = YES;
    [[self view] addSubview:imageGallery];
    
    UIImage *testImage = [UIImage imageNamed:@"Cloud Sea.jpg"];
    UIImage *testImage2 = [UIImage imageNamed:@"cronkite.jpg"];

    UIImageView *testImageView = [[UIImageView alloc] initWithImage:testImage];
    testImageView.frame = [self.view bounds];
    [imageGallery addSubview:testImageView];

    UIImageView *testImageView2 = [[UIImageView alloc] initWithImage:testImage2];
    testImageView2.frame = CGRectMake(320, 0, 320, 568);
    [imageGallery addSubview:testImageView2];
    
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
