//
//  BSTwoControllerView.h
//  YDCircle
//
//  Created by zl on 2017/12/30.
//  Copyright © 2017年 zl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSTwoControllerView : UIView


/**
 当前VC
 */
@property (nonatomic, strong) UIViewController *controllerCur;;

/**
 初始化两个controller

 @param mainController 当前view所在的controller
 @param controller1 controller1
 @param controller2 controller2
 */
- (void)initTwoControllerWithMainController:(UIViewController *)mainController controller1:(UIViewController *)controller1 controller2:(UIViewController *)controller2;


/**
 设置显示哪个controller(切换controller)

 @param controller 将要显示的controller
 */
- (void)setDisplayWithController:(UIViewController *)controller;
@end







