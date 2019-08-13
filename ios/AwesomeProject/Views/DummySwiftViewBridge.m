//
//  DummySwiftViewBridge.m
//  AwesomeProject
//
//  Created by Shusaku Harada on 2019/08/13.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(DummySwiftViewBridge, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(messageText, NSString)

@end
