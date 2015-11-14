//
//  WWArenaViewController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/7.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWArenaViewController.h"

@interface WWArenaViewController ()

@end

@implementation WWArenaViewController

// 设置背景图片 方法2:
- (void)loadView {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NLArenaBackground"]];
    
    imageView.frame = [UIScreen mainScreen].bounds;
    
    imageView.userInteractionEnabled = YES;
    
    self.view = imageView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置背景图片
//    [self setUpViewImage];

    // 设置导航条
    [self setUpNavBarItem];
    
    
}

- (void)setUpNavBarItem {
    
    UISegmentedControl *segmented = [[UISegmentedControl alloc] initWithItems:@[@"足球", @"篮球"]];
    
    [segmented setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmented setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    // 0 140 143
    segmented.tintColor = [UIColor colorWithRed:0 green:140/255.0 blue:143/255.0 alpha:1];
    
    // 默认选中
    segmented.selectedSegmentIndex = 0;
    
    NSMutableDictionary *normal = [NSMutableDictionary dictionary];
    normal[NSForegroundColorAttributeName] = [UIColor colorWithRed:0 green:140/255.0 blue:143/255.0 alpha:1];
    [segmented setTitleTextAttributes:normal forState:UIControlStateNormal];
    
    NSMutableDictionary *select = [NSMutableDictionary dictionary];
    select[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [segmented setTitleTextAttributes:select forState:UIControlStateSelected];
    
    self.navigationItem.titleView = segmented;
    
}

// 设置背景图片 方法1:
- (void)setUpViewImage {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NLArenaBackground"]];
    
    imageView.frame = self.view.bounds;
    
    [self.view addSubview:imageView];
}


@end
