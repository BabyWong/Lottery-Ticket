//
//  WWArenaNavController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/14.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWArenaNavController.h"

@interface WWArenaNavController ()

@end

@implementation WWArenaNavController

// 类引用进项目的时候调用
+ (void)load {  // 这时候类还没有被创建
    
   // 取出UINavigationBar
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [navBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}



@end
