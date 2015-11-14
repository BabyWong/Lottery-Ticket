//
//  WWTabBar.m
//  my lottery ticket
//
//  Created by hwm on 15/11/12.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWTabBar.h"
#import "WWButton.h"

@interface WWTabBar ()


@property (nonatomic, weak) UIButton *oldBtn;

@end

@implementation WWTabBar

- (void)setItems:(NSArray *)items {
    
    _items = items;
    
    int i = 0;
    
    for (UITabBarItem *tabBarItem in items) {
        
        
        WWButton *btn = [WWButton buttonWithType:UIButtonTypeCustom ];
        
        btn.tag = i;
        
        [btn setImage:tabBarItem.image forState:UIControlStateNormal];
        [btn setImage:tabBarItem.selectedImage forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        i++;
        
        // 默认选中第一个BarButton
        if (btn.tag == 0) {
            [self btnClick:btn];
        }
        
        [self addSubview:btn];
    }
}


- (void)btnClick:(UIButton *)btn {
    
    _oldBtn.selected = NO;
    btn.selected = YES;
    _oldBtn = btn;
    
    
//-------- 通知代理 TabBar按钮被点击-------------
    if ([_delegate respondsToSelector:@selector(tabBar:clickBtnIndex:)]) {
        [_delegate tabBar:self clickBtnIndex:btn.tag];
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    int count = (int)self.items.count;
    
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = self.bounds.size.width / count;
    CGFloat btnH = self.bounds.size.height;
    
    for (int i = 0; i < count; i++) {
        
        UIButton *btn = self.subviews[i];
        btnX = i * btnW;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
}
@end
