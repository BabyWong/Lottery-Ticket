//
//  WWHallViewController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/7.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWHallViewController.h"
#import "WWCoverView.h"
#import "WWPopMenu.h"

@interface WWHallViewController ()<WWPopMenuDelegate>


@property (nonatomic, strong) WWPopMenu *menu;

@end

@implementation WWHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];
    
// ---------  设置左边navigationItem 左边 ------
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"CS50_activity_image"] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 60, 60);
    [btn addTarget:self action:@selector(clickGift) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];

}

- (void)clickGift {
    
    // 弹出蒙版
    [WWCoverView showHud];
    
    // 弹出小苹果
    WWPopMenu *menu = [WWPopMenu showPopMenuInPoint:CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2)];
    _menu = menu;
  /*----------- 小苹果需要监听 ---------*/
    _menu.delegate = self;
}

#pragma mark - 代理方法
- (void)popMenu:(WWPopMenu *)menu {
    

    // 隐藏小苹果
    [_menu hiddenPopMenuInPoint:CGPointMake(30, 30) completion:^{
        
        // 隐藏蒙版
        [WWCoverView hideenHud];
        
    }];
}


@end
