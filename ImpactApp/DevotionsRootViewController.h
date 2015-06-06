//
//  DevotionsRootViewController.h
//  ImpactApp
//
//  Created by Robert Kendall on 9/25/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DevotionsPageViewController.h"

@interface DevotionsRootViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *devotionTexts;
@property (strong, nonatomic) NSArray *pageTitles;

- (IBAction)todayButton:(UIButton *)sender;

@end
