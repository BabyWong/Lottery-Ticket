//
//  WWPopMenu.m
//  my lottery ticket
//
//  Created by hwm on 15/11/13.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWPopMenu.h"

@implementation WWPopMenu

+ (_Null_unspecified instancetype)showPopMenuInPoint:(CGPoint)point {
    
    WWPopMenu *popMenu = [[[NSBundle mainBundle] loadNibNamed:@"WWPopMenu" owner:self options:nil] lastObject];
    
    popMenu.center = point;
    
    [[UIApplication sharedApplication].keyWindow addSubview:popMenu];
    
    return popMenu;
}

- (void)hiddenPopMenuInPoint:(CGPoint)point completion:(void(^__nullable)())completion {
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.center = point;
        
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
        
        // 当隐藏菜单完毕的时候调用block块
        completion();
        
    }];
  
}

- (IBAction)closePopMenu:(id)sender {
    
// ------- 关闭按钮的动作最好由控制器去管理
    // 发送通知
    if ([_delegate respondsToSelector:@selector(popMenu:)]) {
        [_delegate popMenu:self];
    }
    
}


@end
