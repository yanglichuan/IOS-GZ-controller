//
//  OneViewController.m
//  02.控制器的创建方式
//
//  Created by Apple on 14/12/27.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end



@implementation OneViewController

//再加载view,会调用这个方法
/**
 *  初始化控制器view
 */
-(void)loadView{
    //load方法会加载view
    //[super loadView];
    //自定义一些view
    NSLog(@"%s",__func__);
    self.view = [[UITableView alloc] init];
    
#warning self.view 实际访问一个view,如这个view不存在，它就会调用 loadview去加载控制器的view
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"%s",__func__);
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
