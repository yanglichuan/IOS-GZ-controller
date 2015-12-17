//
//  TwoViewController.m
//  03.导航控制器(代码)
//
//  Created by Apple on 14/12/27.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()
- (IBAction)backVc;
- (IBAction)enterThreeVc;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //设置下一个控制器的返回按钮
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backItem;
    
    //希望下一个控制器的返回按钮是一张图片

    
    //通过下面的方法没法设置
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_back_normal"] style:UIBarButtonItemStylePlain target:nil action:nil];
    
//自动义按钮设置在返回按钮是无效
//    UIButton *btn = [[UIButton alloc] init];
//    btn.bounds = CGRectMake(0, 0, 46, 31);
//    [btn setBackgroundImage:[UIImage imageNamed:@"btn_back_normal"] forState:UIControlStateNormal];
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
//    self.navigationItem.backBarButtonItem = item;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)dealloc{
    NSLog(@"%s",__func__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backVc {
    //返回上一个控制器
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)enterThreeVc {
    
    //进入第三个控制器
    ThreeViewController *threeVc = [[ThreeViewController alloc] init];
    [self.navigationController pushViewController:threeVc animated:YES];

}
@end
