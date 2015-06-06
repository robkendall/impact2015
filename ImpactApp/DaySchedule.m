//
//  DaySchedule.m
//  ImpactApp
//
//  Created by Robert Kendall on 10/1/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import "DaySchedule.h"
#import "Day.h"

@interface DaySchedule()
@property (strong, nonatomic) Day *day;
@property (strong, nonatomic) NSMutableArray *days;
@end

@implementation DaySchedule

- (Day *) getDay:(NSString *)name{
    _day = [[Day alloc] init];
    _day.name = name;
    _day.hours = [[NSMutableDictionary alloc] init];
    [_day.hours setObject:@"Breakfast" forKey:@"7"];
    [_day.hours setObject:@"Lights Out" forKey:@"22"];
    return _day;
}

- (NSMutableArray *) getDays{
    if(!_days)
        _days = [[NSMutableArray alloc] init];
    
    [self.days addObject:[self getDay:@"Saturday"]];
    [self.days addObject:[self getDay:@"Sunday"]];
    [self.days addObject:[self getDay:@"Monday"]];
    [self.days addObject:[self getDay:@"Tuesday"]];
    [self.days addObject:[self getDay:@"Wednesday"]];
    [self.days addObject:[self getDay:@"Thursday"]];
    [self.days addObject:[self getDay:@"Friday"]];
    [self.days addObject:[self getDay:@"Saturday"]];
    
    return _days;
    
}


@end
