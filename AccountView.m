//
//  AccountView.m
//  IMReConnect
//
//  Created by LiuXuan on 2016/12/8.
//  Copyright © 2016年 Xuan. All rights reserved.
//

#import "AccountView.h"

@interface AccountView ()
@property(nonatomic,strong)UIView *accountView;
@property(nonatomic,strong)UIButton *button;
@end

@implementation AccountView

-(instancetype)initWithFrame:(CGRect)frame AndType:(AccountType)type{
    self=[super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor whiteColor];
        self.type=type;
        _accountTXT=[[UITextField alloc]init];
        _accountTXT.placeholder=@"账号";
        _accountTXT.textAlignment=NSTextAlignmentCenter;
        _accountTXT.frame=CGRectMake(15, SCREEN_HEIGHT*0.35, SCREEN_WIDTH-30, 40);
        _accountTXT.leftViewMode=UITextFieldViewModeAlways;
        
        _passWordTXT=[[UITextField alloc]init];
        _passWordTXT.placeholder=@"密码";
        _passWordTXT.textAlignment=NSTextAlignmentCenter;
        _passWordTXT.frame=CGRectMake(15, CGRectGetMaxY(_accountTXT.frame)+5, SCREEN_WIDTH-30, 40);
        _passWordTXT.leftViewMode=UITextFieldViewModeAlways;
        
        _button=[UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame=CGRectMake(25, CGRectGetMaxY(_passWordTXT.frame)+10, SCREEN_WIDTH-50, 40);
        _button.backgroundColor=[UIColor brownColor];
        if (type==AccountTypeLogin) {
            [_button setTitle:@"登录" forState:UIControlStateNormal];
        }
        else{
            [_button setTitle:@"注册" forState:UIControlStateNormal];
        }
        [_button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_accountTXT];
        [self addSubview:_passWordTXT];
        [self addSubview:_button];
    }
    return self;
}

//-(UITextField *)accountTXT{
//    if (!_accountTXT) {
//        _accountTXT=[[UITextField alloc]init];
//        _accountTXT.placeholder=@"账号";
//        _accountTXT.textAlignment=NSTextAlignmentCenter;
//        _accountTXT.frame=CGRectMake(15, 100, 300, 40);
//        _accountTXT.leftViewMode=UITextFieldViewModeAlways;
////        _accountTXT.leftView=
//    }
//    return _accountTXT;
//}
//
//-(UITextField *)passWordTXT{
//    if (!_passWordTXT) {
//        _passWordTXT=[[UITextField alloc]init];
//        _passWordTXT.placeholder=@"密码";
//        _passWordTXT.textAlignment=NSTextAlignmentCenter;
//        _passWordTXT.frame=CGRectMake(15, 150, 300, 40);
//        _passWordTXT.leftViewMode=UITextFieldViewModeAlways;
//        //        _passWordTXT.leftView=
//        
//    }
//    return _accountTXT;
//}
//
//
//-(UIView *)accountView{
//    if (!_accountView) {
//        _accountView=[[UIView alloc]initWithFrame:self.frame];
//        _accountView.backgroundColor=[UIColor whiteColor];
//    }
//    return _accountView;
//}
//
//
//-(UIButton *)button{
//    if (!_button) {
//        _button=[UIButton buttonWithType:UIButtonTypeCustom];
//        _button.frame=CGRectMake(15, 200, 300, 40);
//        _button.backgroundColor=[UIColor brownColor];
//        if (self.type==AccountTypeLogin) {
//            [_button setTitle:@"登录" forState:UIControlStateNormal];
//        }
//        else{
//            [_button setTitle:@"注册le" forState:UIControlStateNormal];
//        }
//        [_button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return _button;
//}

-(void)clickButton:(id)sender{
    if (self.type==AccountTypeLogin) {
        if (self.delegate&&[self.delegate conformsToProtocol:@protocol(didClickViewDelegate)]&&[self.delegate respondsToSelector:@selector(loginDelegate:)]) {
            [self.delegate loginDelegate:sender];
        }
    }
    else{
        if (self.delegate&&[self.delegate conformsToProtocol:@protocol(didClickViewDelegate)]&&[self.delegate respondsToSelector:@selector(registeDelegate:)]) {
            [self.delegate registeDelegate:sender];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
