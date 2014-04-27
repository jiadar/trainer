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
    NSTimeInterval time;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.countdown.text = @"00:00";
    start=false;
}

- (void)update
{
    
    if (start == false) {
        return;
    }
    
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsedTime = time - currentTime;
    
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

        time = [NSDate timeIntervalSinceReferenceDate] + 375;
        
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

