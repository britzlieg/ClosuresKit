//
//  UIViewExt.swift
//  SwiftTester
//
//  Created by ZhijieLi on 15/5/28.
//  Copyright (c) 2015年 ZhijieLi. All rights reserved.
//

import UIKit
import ObjectiveC

var blockAction: (() -> ()) = {}   /// 原来可以这样定义，作为全局stored的变量，吐血。。。

extension UIView {
    func whenTouch(NumberOfTouche touchNumbers: Int,NumberOfTaps tapNumbers: Int) -> Void {
        var tapGesture = UITapGestureRecognizer()
        tapGesture.numberOfTouchesRequired = touchNumbers
        tapGesture.numberOfTapsRequired = tapNumbers
        tapGesture .addTarget(self, action: "tapActions")
        self.addGestureRecognizer(tapGesture)
    }
    
    func whenTapped(action :(() -> Void)) {
        // 手势-一次点击
        self.whenTouch(NumberOfTouche: 1, NumberOfTaps: 1)
        blockAction = action
    }
    
    func whenDoubleTapped(action :(() -> Void)) {
        // 手势-两次点击
        self.whenTouch(NumberOfTouche: 1, NumberOfTaps: 2)
        blockAction = action
    }
    
    func tapActions() {
        // 执行action
        blockAction()
    }
}

