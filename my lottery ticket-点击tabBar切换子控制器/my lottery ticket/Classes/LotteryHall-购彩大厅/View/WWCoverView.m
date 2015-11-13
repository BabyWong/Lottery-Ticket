//
//  WWCoverView.m
//  my lottery ticket
//
//  Created by hwm on 15/11/13.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWCoverView.h"


@implementation WWCoverView

+ (void)showHud {
    
    // 弹出蒙版
    WWCoverView *coverView = [[WWCoverView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    coverView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
    
// ------ 成为第一个view 就设置为窗口的第一个子view
    [[UIApplication sharedApplication].keyWindow addSubview:coverView];
    
}

// 退出蒙版
+ (void)hideenHud {
    
    for (UIView *vie in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([vie isKindOfClass:self]) {
            [vie removeFromSuperview];
        }
    }
}

@end
