//
//  ViewController.m
//  TimerApp
//
//  Created by Akshay Ramesh on 2/23/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSTimer *timer;
    int second, min, hour;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup aft  er loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    
    second = 0;
    min = 0;
    hour = 0;
    
    [self.startProp setTitle:@"Start" forState:nil];
}

-(void) timerFunc{
    NSLog(@"Timer function is working");
    if(second < 59){
        second++;
    }
    else{
        second = 0;
        min++;
    }
    
    if(min == 60){
        min = 0;
        hour++;
    }
    self.timerLabel.text = [NSString stringWithFormat:@"%d:%d:%d",hour,min,second];
}

- (IBAction)startAction:(id)sender {
    
    if([self.startProp.currentTitle  isEqual: @"Start"]){
        
                timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFunc) userInfo:nil repeats:YES];
        [self.startProp setTitle:@"Reset" forState:nil];
    }
    
    else{
        second = 0;
        min = 0;
        hour = 0;
    }
    
}

- (IBAction)pauseAction:(id)sender {
    [timer invalidate];
}

- (IBAction)resumeAction:(id)sender {
    
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFunc) userInfo:nil repeats:YES];
}
@end
