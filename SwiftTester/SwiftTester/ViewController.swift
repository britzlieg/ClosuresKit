//
//  ViewController.swift
//  SwiftTester
//
//  Created by ZhijieLi on 15/5/18.
//  Copyright (c) 2015年 ZhijieLi. All rights reserved.
//



import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {


    var text = "哇咔咔"
    
    // lazy loading 像OC的getter，只加载一次
    lazy var testBtn: UIButton = {
        var btn = UIButton()
        btn.backgroundColor = UIColor.redColor()
        btn.whenDoubleTapped({ () -> Void in
            println("可以啊")
            println(self.text)
        })
        return btn
    }()
    
    
    // MARK: -life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(testBtn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: -layout
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        testBtn.snp_makeConstraints { (make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.top.equalTo(self.view).offset(100)
            make.left.equalTo(self.view).offset(100)
        }
    }
    
    
}

