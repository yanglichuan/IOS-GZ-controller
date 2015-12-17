//
//  LoginViewController.m
//  08.私人通讯录
//
//  Created by Apple on 14/12/27.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)loginBtnClick;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)loginBtnClick {
    
    //判断用户名密码是否正确定，只有正确的情况下，才能进行下一个界面
    NSString *account = self.accountField.text;
    NSString *password = self.passwordField.text;
    
    if ([account isEqualToString:@"zhangsan"] && [password isEqualToString:@"123"]) {//帐号与密码正确
        NSLog(@"帐号与密码正确");
        
        //执行一个segue，就会进入segue所指的控制器
        [self performSegueWithIdentifier:@"toContactsSegue" sender:nil];
        
    }else{
        NSLog(@"帐号或者密码不正确");
    }
}

/**
 *  使用segue跳转下一个界面之前会调用
 *
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"%s",__func__);
    

    NSLog(@"源控制器 %@",segue.sourceViewController);
    NSLog(@"目标控制器 %@",segue.destinationViewController);
}
@end
