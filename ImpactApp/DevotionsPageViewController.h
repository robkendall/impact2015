//
//  DevotionsPageViewController.h
//  ImpactApp
//
//  Created by Robert Kendall on 9/25/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DevotionsPageViewController : UIPageViewController

@property (strong, nonatomic) IBOutlet UITextView *devotionsTextArea;
@property NSUInteger pageIndex;
@property NSString *devotionsText;
@property NSString *testText;
@property (strong, nonatomic) IBOutlet UILabel *testLabel;

@end
