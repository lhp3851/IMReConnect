//
//  FirstViewController.swift
//  IMReConnect
//
//  Created by LiuXuan on 2016/12/7.
//  Copyright © 2016年 Xuan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,UITableViewDelegate{

    var tableView :UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="好友列表"
        setUpPannel();
        
        requestByGet();
    }

    func setUpPannel() -> Void {
        view.backgroundColor=UIColor.white

        tableView=UITableView(frame: view.frame, style: UITableViewStyle.plain)
        tableView?.delegate=self;
        
        let frame  = CGRect.init(x: 15, y: 74, width: 60, height: 40)
        let button = UIButton.init(frame: frame)
        button.frame(forAlignmentRect: frame)
        button.backgroundColor=UIColor.black
        button.titleLabel?.font=UIFont.systemFont(ofSize: 14)
        button.setTitle("Second", for: UIControlState.normal)
        button.addTarget(self, action: #selector(FirstViewController.goToSecondVC), for: UIControlEvents.touchUpInside);//
        view.addSubview(button);
    }
    
    
    func goToSecondVC() -> Void {
        let secondVC = SecondViewController();
        self.navigationController?.pushViewController(secondVC, animated: true);
    }
    
    func requestByGet() -> Void {
        let request = NSMutableURLRequest(url: NSURL(string: "http://localhost/index.php?name=Pony")! as URL);
        NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) { (response, responseData, error) -> Void in
            if let responseData = responseData {
                if let responseString = String(data: responseData, encoding: String.Encoding.utf8) {
                    print(responseString)
                }
            }
        }
        
        RunLoop.main.run(until: NSDate(timeIntervalSinceNow: 10) as Date)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

