//
//  RegisteAccountView.swift
//  IMReConnect
//
//  Created by lhp3851 on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

enum ViewType  {
    case RegistViwType
    case LoginViewType
}

@objc protocol didClickViewDelegate {
    //登录
     func loginViewDelegate(sender:Any)
    //注册
     func registViewDelegate(sender:Any)
}

class RegisteAccountView: UIView  {
    var  registeView : UIView?
    var  viewType : ViewType?
    var delegate : didClickViewDelegate?
    
    
    override init(frame:CGRect){
        super.init(frame: frame)
        addSubview(setView(frame: frame))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView (frame:CGRect) -> UIView {
        let account  = UITextField.init(frame:CGRect.init(x: 15, y: SCREEN_HEIGHT*0.3, width: SCREEN_WIDTH-30, height: 40));
        account.textAlignment=NSTextAlignment.center;
        account.placeholder="账号";
        let password = UITextField.init(frame:CGRect.init(x: 15, y: account.frame.maxY+10, width: SCREEN_WIDTH-30, height: 40));
        password.textAlignment=NSTextAlignment.center;
        password.placeholder="密码";
        
        let registButton = UIButton(type: UIButtonType.custom)
        registButton.frame=CGRect(x: 15, y: password.frame.maxY+15, width: SCREEN_WIDTH-50, height: 40)
        registButton.backgroundColor=UIColor.brown;
        if viewType==ViewType.LoginViewType {
            registButton.setTitle("登录", for: UIControlState.normal)
        }
        else{
            registButton.setTitle("注册", for: UIControlState.normal)
        }
        registButton.addTarget(self, action: #selector(registAccount(sender:)), for: UIControlEvents.touchUpInside)
        
        registeView=UIView(frame: frame)
        registeView!.addSubview(account);
        registeView!.addSubview(password);
        registeView?.addSubview(registButton);
        return registeView!;
    }
    
    
    func registAccount(sender:Any) -> Void {
        if viewType==ViewType.LoginViewType {
            print("登录\(sender)");
            
            delegate?.loginViewDelegate(sender: sender)
        }
        else{
            print("注册:%@",sender);
            delegate?.registViewDelegate(sender: sender)
        }
    }

}
