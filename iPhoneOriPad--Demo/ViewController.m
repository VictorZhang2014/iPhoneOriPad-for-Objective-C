//
//  ViewController.m
//  iPhoneOriPad--Demo
//
//  Created by Victor Zhang on 16/2/19.
//  Copyright © 2016年 xiaoruigege. All rights reserved.
//

#import "ViewController.h"
#import "ZRAppleInfos.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ZRAppleDeviceName devicetype = [ZRAppleInfos deviceType];
    NSLog(@"viewController=%d",devicetype);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
