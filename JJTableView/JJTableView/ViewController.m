//
//  ViewController.m
//  JJTableView
//
//  Created by lucy on 2017/12/31.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "ViewController.h"
#import "JJTableActivityVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    JJTableActivityVC *vc = [[JJTableActivityVC alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
