//
//  LoginViewController.swift
//  IMReConnect
//
//  Created by lhp3851 on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,didClickViewDelegate {
    internal func loginViewDelegate(sender: Any) {
        print("登录：sender\(sender)");
    }
    
    
    func registViewDelegate(sender: Any) {
        print("注册：sender\(sender)");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPannel();
        title="登录";
    }

    func setUpPannel () -> Void {
        view.backgroundColor=UIColor.white;
        let loginV = RegisteAccountView.init(frame: CGRect(x:0,y:0,width:SCREEN_WIDTH,height:SCREEN_HEIGHT))
        loginV.viewType=ViewType.LoginViewType;
        loginV.delegate = self;
        view .addSubview(loginV);
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
