//
//  ViewController.m
//  Tutorial3
//
//  Created by Akshay Ramesh on 2/20/20.
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
    
    str1 = [[NSString alloc] init];
    str1 = @"Akshay";
    
    self.str2 = [[NSString alloc] init];
    
    self.str2 = @"Akshay2";
    
    id varName = @"Akshay";
    
    NSLog(@"%@", varName);
    
    if([varName isKindOfClass:[NSString class]]){
        
        NSLog(@"Yeah it is");
    }
    
    varName = @"Akshay";
    
    if([varName respondsToSelector:@selector(uppercaseString)]){ //because it is one of the strings methods
        
        NSLog(@"Yeah it is responding");
    }
    
    NSString *newString1 = [[NSString alloc] init];
    newString1 = @"ccc";
    
    NSString *newString2 = [[NSString alloc] init];
    newString2 = @"ccc1";
    
    NSLog(@"%d",[newString1 isEqualToString:newString2]);
    NSLog(@"%lu", (unsigned long)newString1.length);
    
    NSDate *date = [[NSDate alloc] init];
    NSLog(@"%@",date);
    
    NSArray *sampleArray = [[NSArray alloc] initWithObjects:@"A",@"B",@"C", nil];
    NSLog(@"%@",sampleArray);
    NSLog(@"%lu",(unsigned long)sampleArray.count);
    
    NSArray *arrayWithRealObjects = [[NSArray alloc] initWithObjects:newString1,date, nil];
    NSLog(@"%@",arrayWithRealObjects);
    NSLog(@"%lu",(unsigned long)arrayWithRealObjects.count);
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] initWithArray:arrayWithRealObjects];
    [myMutableArray addObject:newString2];
    NSLog(@"Mutable%@",myMutableArray);
    NSLog(@"%lu",(unsigned long)myMutableArray.count);
    
    // enumeration
    for (NSString *str in myMutableArray) {
        NSLog(@"In enumeration for loop: %@", str);
    }
    
    NSLog(@"--------------------");

    
    // enumeration
    for (id idVar in myMutableArray) {
        
        if ([idVar isKindOfClass:[NSString class]]) {
            NSLog(@"In enumeration for loop: %@", idVar);
            
        }
        
    }
    
    NSLog(@"--------------------");

    
    // enumeration
    for (id idVar in myMutableArray) {
        
        if ([idVar isKindOfClass:[NSDate class]]) {
            NSLog(@"In enumeration for loop: %@", idVar);
            
        }
        
    }
    
    NSLog(@"------DICTIONARIES-------------");
    
    NSDictionary *myDict = [[NSDictionary alloc] initWithObjectsAndKeys: @"name",@"Akshay",@"occupation",@"Mobile DEV", nil];
    
    NSLog(@"My Dictionary %@", myDict);
    
    
}


@end
