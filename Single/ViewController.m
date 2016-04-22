//
//  ViewController.m
//  Single
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "Single.h"
#import "MainViewController.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    Single *obg=[[Single alloc]init];
    self.label.backgroundColor=obg.color;
}






- (void)viewDidLoad{
    [super viewDidLoad];
    
    
    Single *obj1=[Single shareSingle];
    Single *obj2=[[Single alloc]init];
    
    NSLog(@"%p~~~~~~~~~%p",obj1,obj2);
    
    
    
    
}
- (IBAction)btn:(UIButton *)sender {
    
    
    MainViewController *mvc=[[MainViewController alloc]init];
    [self presentViewController:mvc animated:YES completion:^{
        [mvc release];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_label release];
    [super dealloc];
}
@end
