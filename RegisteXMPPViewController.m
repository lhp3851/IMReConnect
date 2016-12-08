//
//  RegisteXMPPViewController.m
//  IMReConnect
//
//  Created by LiuXuan on 2016/12/8.
//  Copyright © 2016年 Xuan. All rights reserved.
//

#import "RegisteXMPPViewController.h"
//#import ""

@interface RegisteXMPPViewController ()<didClickViewDelegate>

@end

@implementation RegisteXMPPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"注册";
    [self setUpPannel];
}

-(void)setUpPannel{
    AccountView *viewes=[[AccountView alloc]initWithFrame:self.view.frame AndType:AccountTypeRegiste];
    viewes.delegate=self;
    [self.view addSubview:viewes];
}

-(void)registeDelegate:(id)sender{
    NSLog(@"注册");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
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
