//
//  LifeCycleViewController.swift
//  SwiftTester
//
//  Created by ZhijieLi on 15/5/29.
//  Copyright (c) 2015年 ZhijieLi. All rights reserved.
//

import UIKit

class LifeCycleViewController: UIViewController {
    // MARK: -property
    lazy var testBtn: UIButton! = {
        var btn: UIButton = UIButton()
        btn.backgroundColor = UIColor.redColor()
        return btn
    }()
    
    // MARK: -life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        println("View has loaded")
        // set the superView backgroudColor
        self.view.backgroundColor = UIColor.blueColor()
        // add testBtn to the superView
        self.view.addSubview(self.testBtn)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("View will appear")
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("View has appeared")
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("View will disappear")
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("View has desappeared")
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        println("SubViews will layout")
        // layout subViews 
        self.testBtn.frame = CGRectMake(100, 100, 100, 100)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        println("SubViews has layouted")
        var testBtn_Width = self.testBtn.frame.width
        println("testBtn's width is \(testBtn_Width)")
    }
    
    
}
