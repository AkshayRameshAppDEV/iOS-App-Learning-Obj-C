//
//  ViewController.h
//  TimerApp
//
//  Created by Akshay Ramesh on 2/23/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

- (IBAction)startAction:(id)sender;
- (IBAction)pauseAction:(id)sender;
- (IBAction)resumeAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *startProp;

@end

