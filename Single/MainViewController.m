//
//  MainViewController.m
//  Single
//
//  Created by Mac on 16/2/29.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "MainViewController.h"
#import "Single.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btn:(UIButton *)sender {
//    UIButton *btn=(UIButton *)sender;
    Single *obg=[Single shareSingle];
    obg.color=sender.backgroundColor;
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
