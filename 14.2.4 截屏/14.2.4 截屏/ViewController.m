//
//  ViewController.m
//  14.2.4 截屏
//
//  Created by 李维佳 on 2017/4/5.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //开启一个图形上下文
    UIGraphicsBeginImageContext(self.view.bounds.size);
    
    //截屏
    if ([self.view drawViewHierarchyInRect:self.view.bounds afterScreenUpdates:NO]){
        NSLog(@"Successfully draw the screenshot."); }
    else{
        NSLog(@"Failed to draw the screenshot.");
    }
    //获取当前上下文
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    
    //保存到相册
    UIImageWriteToSavedPhotosAlbum(screenshot, self, nil, nil);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
