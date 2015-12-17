//
//  ThreeViewController.m
//  04.导航控制器(Storyboard)
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
    // Do any additional setup after loading the view.
    NSLog(@"three view加载完成");
}


-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"three  view将显示");
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"three  view完成显示");
}

-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"three  view将消失");
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"three  view已经消失");
}


-(void)dealloc{
    NSLog(@"three 销毁");
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //导航控制器的子控制器
    NSArray *subContrs =  self.navigationController.childViewControllers;
    NSArray *subContrs2 = self.navigationController.viewControllers;
    NSLog(@"%@",subContrs);
    NSLog(@"%@",subContrs2);
}


- (IBAction)backOneVc {
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
    NSArray *subContrs =  self.navigationController.childViewControllers;
    
    UIViewController *oneVc = subContrs[0];
    [self.navigationController popToViewController:oneVc animated:YES];
    
}

//内存警告
-(void)didReceiveMemoryWarning{
    //自觉清除一些不必要的内存
    
    // self.images = nil;
    NSLog(@"%s",__func__);
    
    //判断当前的view在不在窗口
    if(self.view.window){//代表当前的view显示在窗口上
    
    }else{//不在窗口上，不在窗口就可释放资源
    
    }
}
@end
