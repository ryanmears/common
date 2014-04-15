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
    
    NSLog(@"viewDidLoad");
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIScrollView *imageGallery = [[UIScrollView alloc] init];
    imageGallery.frame = [[self view] bounds];
    imageGallery.backgroundColor = [UIColor blueColor];
    [[self view] addSubview:imageGallery];
    
    UIImage *testImage = [[UIImage alloc] initWithContentsOfFile:@"/cloudsea.jpg"];
    
    NSLog(@"testImage: %@", testImage);
    
    UIImageView *testImageView = [[UIImageView alloc] initWithImage:testImage];
    testImageView.frame = [self.view bounds];
    testImageView.backgroundColor = [UIColor redColor];
    [imageGallery addSubview:testImageView];
    
    NSLog(@"[self.view bounds]: %@", NSStringFromCGRect([self.view bounds]));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
