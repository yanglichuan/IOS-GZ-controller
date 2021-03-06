//
//  OneViewController.m
//  03.导航控制器(代码)
//
//  Created by Apple on 14/12/27.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()
- (IBAction)enterSecondVc;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //设置标题
    
    //当前控制器有一个navigationItem属性可以设置标题
    //self.navigationItem.title = @"第一个控制器";
    
    self.title = @"第一个控制器";
    
    //添加导航栏左边按钮
    UIBarButtonItem *cameraItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    
    UIBarButtonItem *composeItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:nil action:nil];
    //self.navigationItem.leftBarButtonItem = cameraTtem;
    self.navigationItem.leftBarButtonItems = @[cameraItem,composeItem];
    
    //self.navigationItem.rightBarButtonItem = cameraItem;
    
    //设置返回按钮 代表下一个控制器返回按钮
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回AAA" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backItem;
    
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

- (IBAction)enterSecondVc {
    
    TwoViewController *twoVc = [[TwoViewController alloc] init];
    
    //获取当前控制器的父控制器（导航控制器）
    [self.navigationController pushViewController:twoVc animated:YES];
    
}
@end
