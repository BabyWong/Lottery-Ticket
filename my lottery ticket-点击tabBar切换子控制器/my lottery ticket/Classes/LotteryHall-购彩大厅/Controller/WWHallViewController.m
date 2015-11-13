//
//  WWHallViewController.m
//  my lottery ticket
//
//  Created by hwm on 15/11/7.
//  Copyright © 2015年 WenmeiWong. All rights reserved.
//

#import "WWHallViewController.h"

@interface WWHallViewController ()

@end

@implementation WWHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"CS50_activity_image"] forState:UIControlStateNormal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];

}


@end
