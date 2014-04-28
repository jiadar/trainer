//
//  WorkoutFeed.h
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "Exercise.h"

@protocol Workout @end

@interface Workout : JSONModel

@property (strong, nonatomic) NSArray<Exercise>* exercises;

@end