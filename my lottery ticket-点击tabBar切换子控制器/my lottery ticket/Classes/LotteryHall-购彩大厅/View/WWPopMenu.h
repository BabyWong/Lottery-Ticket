//
//  WWPopMenu.h
//  my lottery ticket
//
//  Created by hwm on 15/11/13.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WWPopMenu;

// 创建协议

@protocol WWPopMenuDelegate <NSObject>

@optional

- (void)popMenu:(WWPopMenu *__nullable)menu;

@end




@interface WWPopMenu : UIView

+ (_Null_unspecified instancetype)showPopMenuInPoint:(CGPoint)point;

- (void)hiddenPopMenuInPoint:(CGPoint)point completion:(void(^__nullable)())completion;

@property (nonatomic, weak) id<WWPopMenuDelegate> delegate;

@end
