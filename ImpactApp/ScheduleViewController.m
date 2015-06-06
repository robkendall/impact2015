//
//  ScheduleViewController.m
//  ImpactApp
//
//  Created by Robert Kendall on 9/27/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import "ScheduleViewController.h"
#import "DaySchedule.h"
#import "Day.h"

@interface ScheduleViewController ()
@property (strong, nonatomic) NSMutableArray *days;
@end

@implementation ScheduleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DaySchedule *daySchedule = [[DaySchedule alloc] init];
    self.days = [daySchedule getDays];
    for (Day *day in self.days) {
        NSLog(@"%@, %@", day.name, day.hours);
    }
    
    // Do any additional setup after loading the view.
//    _pageTitles = @[@"Monday", @"Tuesday", @"Wednesday"];
//    
//    // Create page view controller
//    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
//    self.pageViewController.dataSource = self;
//    
//    SchedulePageViewController *startingViewController = [self viewControllerAtIndex:0];
//    NSArray *viewControllers = @[startingViewController];
//    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
//    
//    // Change the size of page view controller
//    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
//    
//    [self addChildViewController:_pageViewController];
//    [self.view addSubview:_pageViewController.view];
//    [self.pageViewController didMoveToParentViewController:self];
    
}

- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.days[section] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [self.days count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"day" forIndexPath:indexPath];
    cell.textLabel.text = @"1";
    return cell;
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//- (IBAction)todayButton:(id)sender {
//    SchedulePageViewController *startingViewController = [self viewControllerAtIndex:0];
//    NSArray *viewControllers = @[startingViewController];
//    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];
//}
//
//- (SchedulePageViewController *)viewControllerAtIndex:(NSUInteger)index{
//    if(([self.pageTitles count] == 0) || (index >= [self.pageTitles count])){
//        return nil;
//    }
//    
//    SchedulePageViewController *schedulePageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
//    schedulePageViewController.devotionsText = self.devotionTexts[index];
//    schedulePageViewController.testText = self.pageTitles[index];
//    schedulePageViewController.pageIndex = index;
//    
//    return schedulePageViewController;
//}
//
//#pragma mark - Page View Controller Data Source
//
//- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
//{
//    NSUInteger index = ((SchedulePageViewController*) viewController).pageIndex;
//    
//    if ((index == 0) || (index == NSNotFound)) {
//        return nil;
//    }
//    
//    index--;
//    return [self viewControllerAtIndex:index];
//}
//
//- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
//{
//    NSUInteger index = ((SchedulePageViewController*) viewController).pageIndex;
//    
//    if (index == NSNotFound) {
//        return nil;
//    }
//    
//    index++;
//    if (index == [self.pageTitles count]) {
//        return nil;
//    }
//    return [self viewControllerAtIndex:index];
//}
//
//- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
//{
//    return [self.pageTitles count];
//}
//
//- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
//{
//    return 0;
//}

@end