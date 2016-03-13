//
//  DrawerViewController.m
//  抽屉效果
//
//  Created by 王学东 on 16/2/16.
//  Copyright © 2016年 Wolibear. All rights reserved.
//

#import "DrawerViewController.h"

@interface DrawerViewController ()

@end

@implementation DrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 0.2, self.view.frame.size.height) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:tableView];
    
    [self test1];
    
    NSLog(@"再次尝试不修改同一个文件");
    
}

- (void)test1
{
    NSLog(@"自己修改的");
    
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
