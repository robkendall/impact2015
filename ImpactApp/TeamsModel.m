//
//  TeamsModel.m
//  ImpactApp
//
//  Created by Robert Kendall on 9/24/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import "TeamsModel.h"

@implementation TeamsModel

-(NSArray *) getTeamsArray{
    
    NSArray *teamsArray = [[NSMutableArray alloc] init];
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    NSDictionary *teamsDictionary = [[NSMutableDictionary alloc] init];
    
    teamsDictionary = @{@"Leader":@"Rob", @"Encourager":@"Gaile", @"Students":@[@"Hannah", @"Nevin"], @"Group Name":@"rob kenDOITall"};
    [mutableArray addObject: teamsDictionary];
    teamsDictionary = @{@"Leader":@"Hauser", @"Encourager":@"Swammy", @"Students":@[@"TJ", @"Jibba"], @"Group Name":@"Hauser's Bruisers"};
    [mutableArray addObject: teamsDictionary];
    teamsArray = [mutableArray mutableCopy];
    
    return teamsArray;
}

@end
