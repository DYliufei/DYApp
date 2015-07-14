//
//  MyViewController.m
//  DYApp
//
//  Created by 刘飞 on 15/7/14.
//  Copyright (c) 2015年 刘飞. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark -----UITableDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else if (section == 1) {
        return 2;
    } else if (section == 2) {
        return 2;
    } else {
        return 1;
    }
    }

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyCell"];
        
    }
    
    cell.imageView.image = [UIImage imageNamed:@"sun"];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"我的关注";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }else {
            cell.textLabel.text = @"我的E点";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"我的话题";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }else {
            cell.textLabel.text = @"我的点评";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }
    } else if (indexPath.section == 2) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"关于我们";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }else {
            cell.textLabel.text = @"意见反馈";
            cell.imageView.image = [UIImage imageNamed:@"sun"];
        }
    } else {
        cell.textLabel.text = @"我的设置";
        cell.imageView.image = [UIImage imageNamed:@"sun"];
    }
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 5.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 3.0;
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
