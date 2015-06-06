//
//  ScheduleViewController.h
//  ImpactApp
//
//  Created by Robert Kendall on 9/27/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SchedulePageViewController.h"

@interface ScheduleViewController : UIViewController <UIPageViewControllerDataSource, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) IBOutlet UITableView *scheduleTableView;

- (IBAction)todayButton:(UIButton *)sender;

@end
