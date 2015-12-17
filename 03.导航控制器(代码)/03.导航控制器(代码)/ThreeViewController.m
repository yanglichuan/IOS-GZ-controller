//
//  ThreeViewController.m
//  03.导航控制器(代码)
//
//  Created by Apple on 14/12/27.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()
- (IBAction)backOneVc;

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton *btn = [[UIButton alloc] init];
    btn.bounds = CGRectMake(0, 0, 46, 31);
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_back_normal"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    //设置左边的按钮
    self.navigationItem.leftBarButtonItem = item;
}

-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
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

- (IBAction)backOneVc {
    //返回第一个控制器(也就根控制器);
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
