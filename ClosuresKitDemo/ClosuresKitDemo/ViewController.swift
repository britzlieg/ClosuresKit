//
//  ViewController.swift
//  ClosuresKitDemo
//
//  Created by ZhijieLi on 12/2/15.
//  Copyright © 2015 ZhijieLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Private
    private func _setupViews() {
        let button_1 = UIButton.init(frame: CGRectMake(20, 100, 60, 30))
        button_1.backgroundColor = UIColor.blueColor()
        button_1.setTitle("Click", forState: .Normal)
        button_1.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.view.addSubview(button_1)
        button_1.whenTapped { () -> Void in
            print("button_1 has been clicked")
        }

        let button_2 = UIButton.init(frame: CGRectMake(20, 200, 60, 30))
        button_2.backgroundColor = UIColor.redColor()
        button_2.setTitle("Click", forState: .Normal)
        button_2.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.view.addSubview(button_2)
        button_2.whenTapped { () -> Void in
            print("button_2 has been clicked")
        }


    }
}

