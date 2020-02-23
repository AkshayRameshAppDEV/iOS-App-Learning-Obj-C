//
//  ViewController.m
//  Tutoria4
//
//  Created by Akshay Ramesh on 2/22/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     NSLog(@"Successfully Entered Screen 1");
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"segue1"]){
        
        NSLog(@"This is executed first");
        SecondViewController *vc = segue.destinationViewController;
        vc.stringToBePassed = @"Akshay is the string being set from FVC";
    }
}
- (IBAction)btnAction:(id)sender {
    
    [self performSegueWithIdentifier:@"segue1" sender:self];
}
@end
