//
//  DummySwiftNativeView.swift
//  AwesomeProject
//
//  Created by Shusaku Harada on 2019/08/13.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class DummySwiftNativeView: UIView {

    @IBOutlet weak var messageLabel: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  
  private var _messageText: NSString = ""
  @objc var messageText: NSString {
    get {
      return _messageText
    }
    set {
      _messageText = newValue
      guard let wLabel = messageLabel else {
        return
      }
      wLabel.text = newValue as? String
    }
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    loadFromNib()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    loadFromNib()
  }

  private func loadFromNib() {
    guard let nibView = Bundle(for: type(of: self)).loadNibNamed("DummySwiftNativeView", owner: self, options: nil)?.first as? UIView else {
      return
    }
    addSubview(nibView)
    messageLabel?.text = _messageText as? String
  }
}
