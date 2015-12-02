//
//  UIViewExt.swift
//  SwiftTester
//
//  Created by ZhijieLi on 15/5/28.
//  Copyright (c) 2015年 ZhijieLi. All rights reserved.
//

/// 先只做单击事件的监听
// NSValue


import UIKit

var blockActionDict: [String : (() -> ())] = [:]

extension UIView {
    private func whenTouch(NumberOfTouche touchNumbers: Int,NumberOfTaps tapNumbers: Int) -> Void {
        let tapGesture = UITapGestureRecognizer()
        tapGesture.numberOfTouchesRequired = touchNumbers
        tapGesture.numberOfTapsRequired = tapNumbers
        tapGesture .addTarget(self, action: "tapActions")
        self.addGestureRecognizer(tapGesture)
    }
    
    func whenTapped(action :(() -> Void)) {
        // 手势-一次点击
        _addBlock(NewAction: action)
        whenTouch(NumberOfTouche: 1, NumberOfTaps: 1)
    }

    
    func tapActions() {
        // 执行action
        _excuteCurrentBlock()
    }


    private func _addBlock(NewAction newAction:()->()) {
        let key = String(NSValue(nonretainedObject: self))
        blockActionDict[key] = newAction
    }

    private func _excuteCurrentBlock(){
        let key = String(NSValue(nonretainedObject: self))
        let block = blockActionDict[key]
        block!()
    }

}

