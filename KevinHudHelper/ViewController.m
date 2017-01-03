//
//  ViewController.m
//  KevinHudHelper
//
//  Created by 孙凯峰 on 2016/12/23.
//  Copyright © 2016年 孙凯峰. All rights reserved.
//
#import "HUDHelper.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *ViewStartHud;
- (IBAction)ViewStartHud:(id)sender;

- (IBAction)ShowErrorHud:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)ViewStartHud:(id)sender {
    [[HUDHelper sharedInstance] syncLoading:@"正在提交登录"];
    [self performSelector:@selector(Endhud) withObject:nil afterDelay:4.0f];
}
-(void)Endhud{
    [[HUDHelper sharedInstance] syncStopLoadingMessage:@"登陆成功"];

}


- (IBAction)ShowErrorHud:(id)sender {
    [[HUDHelper sharedInstance] tipMessage:@"出错了"];
}
@end
