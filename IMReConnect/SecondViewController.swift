//
//  SecondViewController.swift
//  IMReConnect
//
//  Created by LiuXuan on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPannel();
    }

    func setUpPannel() -> Void {
        view.backgroundColor=UIColor.white
        
        let frame  = CGRect.init(x: 15, y: 74, width: 60, height: 40)
        let button = UIButton.init(frame: frame)
        button.frame(forAlignmentRect: frame)
        button.backgroundColor=UIColor.black
        button.titleLabel?.font=UIFont.systemFont(ofSize: 14)
        button .setTitle("First", for: UIControlState.normal)
        button .addTarget(self, action: #selector(backToFirstVC), for: UIControlEvents.touchUpInside);//
        view.addSubview(button);
    }
    
    
    func backToFirstVC() -> Void {
        _=navigationController?.popViewController(animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

