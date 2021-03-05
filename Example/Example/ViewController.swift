//
//  ViewController.swift
//  Example
//
//  Created by Yuke on 2021/3/5.
//

import UIKit
import WeChatOpenSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let ver = WXApi.getVersion()
        
        NSLog("看看版本号%@", ver)
        
        
        
        
    }


}

