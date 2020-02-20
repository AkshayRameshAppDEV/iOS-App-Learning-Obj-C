//
//  ViewController.h
//  App2
//
//  Created by Akshay Ramesh on 2/20/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)button1:(id)sender;

- (IBAction)button2:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

