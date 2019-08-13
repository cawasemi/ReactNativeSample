//
//  DummyNativeView.m
//  AwesomeProject
//
//  Created by Shusaku Harada on 2019/08/12.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "DummyNativeView.h"

@implementation DummyNativeView

RCT_EXPORT_MODULE(DummyNativeView);

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

RCT_EXPORT_VIEW_PROPERTY(messageText, NSString)

- (UIView *)view
{
  UIView *baseView = [[UIView alloc] init];
  baseView.backgroundColor = [UIColor cyanColor];
  UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
  messageLabel.text = @"This View is Native.";
  messageLabel.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
  [messageLabel sizeToFit];
  [baseView addSubview:messageLabel];
  return baseView;
}

@end
