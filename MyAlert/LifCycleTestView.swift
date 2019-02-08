//
//  LifCycleTestView.swift
//  MyAlert
//
//  Created by 渡邊丈洋 on 2019/02/07.
//  Copyright © 2019 渡邊丈洋. All rights reserved.
//

import UIKit

class LifCycleTestView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
    
    override func setNeedsUpdateConstraints() {
        super.setNeedsUpdateConstraints()
    }
    
    override func updateConstraintsIfNeeded() {
        super.updateConstraintsIfNeeded()
    }
    

}
