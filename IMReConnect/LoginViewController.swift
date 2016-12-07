//
//  LoginViewController.swift
//  IMReConnect
//
//  Created by lhp3851 on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPannel();
        title="登录";
    }

    func setUpPannel () -> Void {
        view.backgroundColor=UIColor.white;
        let loginV = RegisteAccountView.init(frame: CGRect(x:0,y:0,width:SCREEN_WIDTH,height:SCREEN_HEIGHT))
        loginV.viewType=ViewType.RegistViwType;
        let loginVDelegate : didClickViewDelegate = LoginViewController() as! didClickViewDelegate        
        view .addSubview(loginV);
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
