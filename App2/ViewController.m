//
//  ViewController.m
//  App2
//
//  Created by Akshay Ramesh on 2/20/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// View Did Load is called first
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"View did load appears first");
    
}

-(void)viewDidAppear:(BOOL)animated{
    
    NSLog(@"View did appear loads after load");
    
}

- (IBAction)button1:(id)sender {
    
    NSLog(@"Button 1 pressed");
    self.myTextField.text = @"Button 1 Pressed";
    self.myLabel.text = @"Button 1 Pressed";
    
}

- (IBAction)button2:(id)sender {
    NSLog(@"Button 2 pressed");
    self.myTextField.text = @"Button 2 Pressed";
    self.myLabel.text = @"Button 2 Pressed";
}
@end
