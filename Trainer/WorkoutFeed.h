//
//  WorkoutFeed.h
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "WorkoutModel.h"

@interface WorkoutFeed : JSONModel

@property (strong, nonatomic) NSArray<WorkoutModel>* workouts;

@end