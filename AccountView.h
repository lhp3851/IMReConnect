//
//  AccountView.h
//  IMReConnect
//
//  Created by LiuXuan on 2016/12/8.
//  Copyright © 2016年 Xuan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  NS_ENUM (NSInteger,AccountType){
    AccountTypeLogin,
    AccountTypeRegiste
};

@protocol didClickViewDelegate <NSObject>
@optional
-(void)loginDelegate:(id)sender;
-(void)registeDelegate:(id)sender;

@end

@interface AccountView : UIView
@property(nonatomic,weak)id <didClickViewDelegate>delegate;
@property(nonatomic,assign)AccountType type;//视图类型
@property(nonatomic,strong)UITextField *accountTXT;//账号
@property(nonatomic,strong)UITextField *passWordTXT;//密码


-(instancetype)initWithFrame:(CGRect)frame AndType:(AccountType)type;
@end
