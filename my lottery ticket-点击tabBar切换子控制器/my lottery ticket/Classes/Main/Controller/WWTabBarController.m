//
//  WWTabBarController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/7.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWTabBarController.h"
#import "WWHallViewController.h"
#import "WWArenaViewController.h"
#import "WWDiscoveryViewController.h"
#import "WWHistoryViewController.h"
#import "WWMyLotteryViewController.h"
#import "WWTabBar.h"
#import "WWNavViewController.h"
#import "WWArenaNavController.h"


@interface WWTabBarController () <WWTabBarDelegate>


@property (nonatomic, strong) NSMutableArray *itemsM;

@end

@implementation WWTabBarController

- (NSMutableArray *)itemsM {
    
    if (!_itemsM) {
        _itemsM = [NSMutableArray array];
    }
    return _itemsM;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setUpTabBar];
    
    
    
}
// 自定义tabBar
- (void)setUpTabBar {
    
    [self.tabBar removeFromSuperview];
    
    WWTabBar *tabBar = [[WWTabBar alloc] initWithFrame:self.tabBar.frame];
    
    tabBar.items = self.itemsM;
    tabBar.backgroundColor = [UIColor redColor];
    
    tabBar.delegate = self;
    
    [self.view addSubview:tabBar];
}

// 创建所有子控制器
- (void)setUpAllChildViewController {
    
    [self setUpOneChildViewController:[[WWHallViewController alloc] init] title:@"购彩大厅" image:@"TabBar_LotteryHall_new" selectImage:@"TabBar_LotteryHall_selected_new"];
    
    [self setUpOneChildViewController:[[WWArenaViewController alloc] init] title:@"竞技场" image:@"TabBar_Arena_new" selectImage:@"TabBar_Arena_selected_new"];
    
    [self setUpOneChildViewController:[[WWDiscoveryViewController alloc] init] title:@"发现" image:@"TabBar_Discovery_new" selectImage:@"TabBar_Discovery_selected_new"];
    
    [self setUpOneChildViewController:[[WWHistoryViewController alloc] init] title:@"开奖信息" image:@"TabBar_History_new" selectImage:@"TabBar_History_selected_new"];
    
    [self setUpOneChildViewController:[[WWMyLotteryViewController alloc] init] title:@"我的彩票" image:@"TabBar_MyLottery_new" selectImage:@"TabBar_MyLottery_selected_new"];

}

- (void)setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage  {
    
    UINavigationController *nav = [[WWNavViewController alloc] initWithRootViewController:vc];
    
    vc.navigationItem.title = title;
    
    if ([vc isKindOfClass:[WWArenaViewController class]]) {
        nav = [[WWArenaNavController alloc] initWithRootViewController:vc];
    }
    nav.tabBarItem.image = [UIImage imageNamed:image];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    
    [self.itemsM addObject:nav.tabBarItem];
    
    [self addChildViewController:nav];
}

#pragma mark - 实现自定义TabBar代理方法
- (void)tabBar:(WWTabBar *)tabBar clickBtnIndex:(NSInteger)clickBtnIndex {
    
    self.selectedIndex = clickBtnIndex;
}


@end
