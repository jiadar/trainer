//
//  FirstViewController.m
//  Trainer
//
//  Created by Ross Capdeville on 4/26/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countdown;

- (IBAction)buttonPressed:(id)sender;

@end


@implementation FirstViewController {
    
    bool start;
    NSTimeInterval completionTime;
    WorkoutFeed *JSONData;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.countdown.text = @"00:00";
    start=false;
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"json"];
    // Retrieve local JSON file called data.json
    
    NSLog(@"Read JSON file %@", filePath);
    
    NSError *error = nil; // This so that we can access the error if something goes wrong
    NSData *myJSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    NSString *myJSONString = [[NSString alloc] initWithData:myJSONData encoding:NSUTF8StringEncoding];
    
    // Load the file into an NSData object called JSONData
    // see http://sketchytech.blogspot.com/2012/04/json-and-xcode-ios-basics.html or
    // http://www.appcoda.com/fetch-parse-json-ios-programming-tutorial/
    // for how to do a web query
    
//    id JSONObject = [NSJSONSerialization
//                     JSONObjectWithData:myJSONData
//                     // Creates an Objective-C NSData object from JSON Data
//                     options:NSJSONReadingAllowFragments
//                     error:&error];
    
    NSLog(@" data %@", myJSONString);

//    NSError* err = nil;
//    WorkoutFeed* myWorkoutFeed = [[WorkoutFeed alloc] initWithString:myJSONString error:&err];
    
//    NSLog(@"workouts: %@", myWorkoutFeed.workouts);
    

}

- (void)update
{
    
    if (start == false) {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = completionTime - currentTime;
    
    // We calculate the minutes.
    int minutes = (int)(elapsedTime / 60.0);
    
    // We calculate the seconds.
    int seconds = (int)(elapsedTime = elapsedTime - (minutes * 60));
    
    // We update our Label with the current time.
    self.countdown.text = [NSString stringWithFormat:@"%u:%02u", minutes, seconds];
    
    // We recursively call update to get the new time.
    [self performSelector:@selector(update) withObject:self afterDelay:0.1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
   
    if (start == false) {
        
        // Since it is false we need to reset it back to true.
        start = true;
        
        // Gets the current time.

        completionTime = [NSDate timeIntervalSinceReferenceDate] + 375;
        
        // Changes the title of the button to Stop!
        [sender setTitle:@"STOP" forState:UIControlStateNormal];
        
        // Calls the update method.
        
        [self update];
        
    } else {
        
        // Since it is false we need to reset it back to false.
        start = false;
        
        // Changes the title of the button back to Start.
        [sender setTitle:@"START" forState:UIControlStateNormal];
        
    }
}



@end

