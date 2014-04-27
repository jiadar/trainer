//
//  Workout.m
//  Trainer
//
//  Created by Ross Capdeville on 4/27/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import "Workout.h"

@implementation Workout

+ (NSString *)makeJSONObject {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    // Retrieve local JSON file called data.json
    
    NSLog(@"Read JSON file %@", filePath);
    
    NSError *error = nil; // This so that we can access the error if something goes wrong
    NSData *myJSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Load the file into an NSData object called JSONData
    // see http://sketchytech.blogspot.com/2012/04/json-and-xcode-ios-basics.html or
    // http://www.appcoda.com/fetch-parse-json-ios-programming-tutorial/
    // for how to do a web query
    
    id JSONObject = [NSJSONSerialization
                     JSONObjectWithData:myJSONData
                     // Creates an Objective-C NSData object from JSON Data
                     options:NSJSONReadingAllowFragments
                     error:&error];
    
    NSLog(@" data %@", JSONObject);
    
    return JSONObject;
}

@end
