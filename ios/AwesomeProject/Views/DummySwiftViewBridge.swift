//
//  DummySwiftViewBridge.swift
//  AwesomeProject
//
//  Created by Shusaku Harada on 2019/08/13.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

@objc(DummySwiftViewBridge)
class DummySwiftViewBridge: RCTViewManager {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

  override func view() -> UIView! {
    return DummySwiftNativeView(frame: .zero)
  }
}
