//
//  SecondViewController.m
//  Tutoria4
//
//  Created by Akshay Ramesh on 2/22/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Successfully Entered Screen 2");
    NSLog(@"This is the string: %@", self.stringToBePassed);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
