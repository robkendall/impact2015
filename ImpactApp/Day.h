//
//  Day.h
//  ImpactApp
//
//  Created by Robert Kendall on 10/1/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Day : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableDictionary *hours;

@end
