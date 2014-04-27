//
//  Workout.h
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel/JSONModelLib.h"
#import "ExerciseModel.h"

@protocol WorkoutModel @end

@interface WorkoutModel: NSObject

@property (strong, nonatomic) NSString *clientName;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *clientId;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) ExerciseModel* exercises;

@end


