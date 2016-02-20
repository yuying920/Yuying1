//
//  ViewController.m
//  抽屉效果
//
//  Created by 王学东 on 16/2/16.
//  Copyright © 2016年 Wolibear. All rights reserved.
//

#import "ViewController.h"
#import "DrawerViewController.h"
@interface ViewController ()
{
    BOOL _isOpen;
    DrawerViewController *_drawer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [button addTarget:self action:@selector(btnAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    [self addSubVC];
}
- (void)addSubVC
{
    DrawerViewController *drawer = [[DrawerViewController alloc] init];
    drawer.view.frame = CGRectMake(-1 * self.view.frame.size.width * 0.2, 0, self.view.frame.size.width * 0.2, self.view.frame.size.height);
    _drawer = drawer;
    [self addChildViewController:drawer];
    [self.view addSubview:_drawer.view];
    
}
- (void)btnAction
{
    _isOpen = !_isOpen;
    
    CGFloat offset = _isOpen ? 0 : -1 * (self.view.frame.size.width * 0.2);
    
    [UIView animateWithDuration:1 animations:^{
        _drawer.view.frame = CGRectMake(offset, _drawer.view.frame.size.width, 0, _drawer.view.frame.size.height);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
