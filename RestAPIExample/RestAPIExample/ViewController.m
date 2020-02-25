//
//  ViewController.m
//  RestAPIExample
//
//  Created by Akshay Ramesh on 2/25/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{


    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"http://dummy.restapiexample.com/api/v1/employees"] completionHandler:^(NSData *_Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error){
        
        NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
//        NSLog(@"data %@", dict);
        
        NSArray *array;
        array = [dict valueForKey:@"data"];
        
        
        for(int i=0; i<array.count; i++){
            
            NSLog(@"data %@", array[i]);

        }
        
        for(NSDictionary *dict in array){
            
            NSLog(@"%@-%@", [dict valueForKey:@"employee_name"], [dict valueForKey:@"employee_age"]);
            
        }

    }] resume];
}


@end
