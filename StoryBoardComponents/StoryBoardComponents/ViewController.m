//
//  ViewController.m
//  StoryBoardComponents
//
//  Created by Akshay Ramesh on 2/24/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)btnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityInd;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UITextField *myTextField2;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)stepperAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIStepper *stepperVar;
@property (weak, nonatomic) IBOutlet UIProgressView *progressVar;
@property (weak, nonatomic) IBOutlet UISwitch *switchVar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.activityInd stopAnimating];
    self.activityInd.hidesWhenStopped=YES;
}

- (void)viewDidAppear:(BOOL)animated{
    
    blockDefine blockVar;
    
    blockVar=^{
        NSLog(@"Hello");
        NSLog(@"Second Line");
        
    };
    
    blockVar();
}


- (IBAction)btnAction:(id)sender {
    
    if([sender tag] == 1){
        
        NSLog(@"Start is pressed");
        [self.activityInd startAnimating];
        _myTextField.text = @"Activity Indicator is running";
    }
    
    else{
        NSLog(@"End is Pressed");
        [self.activityInd stopAnimating];
        _myTextField.text = @"Activity Indicator is stopped";

    }
    

}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"The editing has begun");
    [_myTextField becomeFirstResponder];
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [textField resignFirstResponder];
    NSLog(@"The editing has begun");

    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSLog(@"The editing has done.");
    [_myTextField2 becomeFirstResponder];
    return YES;
}

- (IBAction)stepperAction:(id)sender {
    
    NSLog(@"The stepper value is: %f", self.stepperVar.value);
    self.myLabel.text = [NSString stringWithFormat: @"%.1f", self.stepperVar.value];
    [self.progressVar setProgress: self.progressVar.progress + 0.1 ];
    
    if(_switchVar.on == NO){
        [_switchVar setOn:YES animated:YES];
        _switchVar.backgroundColor = [UIColor greenColor];
        _switchVar.onTintColor = [UIColor greenColor];

    }
    
    else{
        _switchVar.backgroundColor = [UIColor redColor];
        _switchVar.onTintColor = [UIColor redColor];
         [_switchVar setOn:NO animated:YES];
    }
}
@end
