//
//  WWTabBar.h
//  my lottery ticket
//
//  Created by hwm on 15/11/12.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  WWTabBar;

@protocol WWTabBarDelegate <NSObject>

@optional
// 把自己传过去
- (void)tabBar:(WWTabBar *)tabBar clickBtnIndex:(NSInteger)clickBtnIndex;

@end

@interface WWTabBar : UIView

@property (nonatomic, strong) NSArray *items;

@property (nonatomic, weak) id<WWTabBarDelegate> delegate;

@end
