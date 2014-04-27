//
//  FirstViewController.m
//  Trainer
//
//  Created by Ross Capdeville on 4/26/14.
//  Copyright (c) 2014 Ross Capdeville. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *timeRemaining;

- (IBAction)startWorkout:(UIButton *)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startWorkout:(id)sender {

    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTime)
                                           userInfo:nil
                                            repeats:YES];
}


-(void)updateTime
{
    //Get the time left until the specified date
    ti=ti-1;
    NSInteger secondsRemaining = ti % 60;
    NSInteger minutesRemaining = (ti / 60) % 60;
    
    //Update the label with the remaining time
    self.timeRemaining.text = [NSString stringWithFormat:@"%%02i : %02i sec", minutesRemaining,secondsRemaining];
}

@end
