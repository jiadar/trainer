//
//  Workout.h
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel/JSONModelLib.h"

@protocol Exercise @end

@interface Exercise: JSONModel

@property (strong, nonatomic) NSString* exerciseName;
@property (strong, nonatomic) NSString* sets;
@property (strong, nonatomic) NSString* reps;
@property (strong, nonatomic) NSString* time_per_set;
@property (strong, nonatomic) NSString* rest_time_per_set;
@property (strong, nonatomic) NSString* transition_time;
@property (strong, nonatomic) NSArray* weights;

@end


