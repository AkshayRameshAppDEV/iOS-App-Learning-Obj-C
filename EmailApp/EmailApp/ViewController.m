//
//  ViewController.m
//  EmailApp
//
//  Created by Akshay Ramesh on 2/23/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
        mailController.mailComposeDelegate = self;
        [mailController setSubject:@"hi"];
        [mailController setToRecipients:[NSArray arrayWithObject:@"akshay_ramesh@yahoo.com"]];
        [mailController setMessageBody:@"This is from EamilApp program from the ViewController.m" isHTML:NO];
        
        [self presentViewController:mailController animated:YES completion:nil];
        
        
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    if (error) {
        NSLog(@"the error is %@", error);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)alertButton:(id)sender {
    
    NSLog(@"Alert button is pressed");
    
    UIAlertController * alert = [UIAlertController
                    alertControllerWithTitle:@"Title"
                                     message:@"Message"
                              preferredStyle:UIAlertControllerStyleAlert];



    UIAlertAction* yesButton = [UIAlertAction
                        actionWithTitle:@"Yes, please"
                                  style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];

    UIAlertAction* noButton = [UIAlertAction
                            actionWithTitle:@"No, thanks"
                                      style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                       //Handle no, thanks button
                                    }];

    [alert addAction:yesButton];
    [alert addAction:noButton];

    [self presentViewController:alert animated:YES completion:nil];
}
@end
