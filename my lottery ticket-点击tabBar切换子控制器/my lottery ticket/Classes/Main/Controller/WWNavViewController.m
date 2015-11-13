//
//  WWNavViewController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/12.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWNavViewController.h"

@interface WWNavViewController ()

@end

@implementation WWNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    attribute[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    attribute[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    self.navigationBar.titleTextAttributes = attribute;
    
}


@end
