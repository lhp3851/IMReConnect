//
//  RegisteAccountViewController.swift
//  IMReConnect
//
//  Created by lhp3851 on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

class RegisteAccountViewController: UIViewController, didClickViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        title="注册";
        setUpPannel();
    }

    func registViewDelegate(sender: Any) {
        print("");
    }
    
    func setUpPannel () {
        view.backgroundColor=UIColor.white;
        let registV = RegisteAccountView.init(frame: CGRect(x:0,y:0,width:SCREEN_WIDTH,height:SCREEN_HEIGHT))
        registV.viewType=ViewType.RegistViwType;
        registV.delegate =  self
        view .addSubview(registV);
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
