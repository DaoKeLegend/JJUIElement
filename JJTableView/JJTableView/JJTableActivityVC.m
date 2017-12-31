//
//  JJTableActivityVC.m
//  JJTableView
//
//  Created by lucy on 2017/12/31.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "JJTableActivityVC.h"

@interface JJTableActivityVC ()

@property (nonatomic, strong) UIView *activityView;

@end

@implementation JJTableActivityVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    [self initUI];
}

#pragma mark - Object Private Function

- (void)initUI
{
    self.activityView = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width - 130.0, self.view.bounds.size.height - 130.0, 100.0, 100.0)];
    self.activityView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.activityView];
}

#pragma mark - UITableViewDataSource && UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"滚动范围 : x = %lf, y = %lf", scrollView.contentOffset.x, scrollView.contentOffset.y);
    
    //更新视图的y值，让其看似不动在右下角
    self.activityView.frame = CGRectMake(self.view.bounds.size.width - 130.0, self.view.bounds.size.height - 130.0 + scrollView.contentOffset.y, 100.0, 100.0);
    
    NSLog(@"tableviewFrame = %@", self.tableView);
    NSLog(@"activityViewFrame = %@", self.activityView);
}

@end
