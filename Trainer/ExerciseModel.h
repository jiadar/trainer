//
//  Exercise.h
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel/JSONModelLib.h"

@interface ExerciseModel: NSObject

@property (strong, nonatomic) NSString *exerciseName;
@property (strong, nonatomic) NSString *sets;
@property (strong, nonatomic) NSString *reps;
@property (strong, nonatomic) NSString *time_per_set;
@property (strong, nonatomic) NSString *rest_time_per_set;
@property (strong, nonatomic) NSString *transition_time;
@property (strong, nonatomic) NSArray *weights;

@end

// ref: http://www.touch-code-magazine.com/how-to-fetch-and-parse-json-by-using-data-models/
