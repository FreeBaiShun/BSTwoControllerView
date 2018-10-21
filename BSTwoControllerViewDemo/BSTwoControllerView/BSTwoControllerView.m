//
//  BSTwoControllerView.m
//  YDCircle
//
//  Created by zl on 2017/12/30.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "BSTwoControllerView.h"

@interface BSTwoControllerView ()
@property (nonatomic, weak) UIViewController *mainController;
@end

@implementation BSTwoControllerView{
    

}

- (void)initTwoControllerWithMainController:(UIViewController *)mainController controller1:(UIViewController *)controller1 controller2:(UIViewController *)controller2{
    __weak typeof (self) weakeSelf = self;
    weakeSelf.mainController = mainController;
    
    [mainController addChildViewController:controller1];
    controller1.view.frame = self.bounds;
    [weakeSelf addSubview:controller1.view];

    [mainController addChildViewController:controller2];

    weakeSelf.controllerCur = controller1;
    [controller1.view.superview layoutIfNeeded];
}

- (void)setDisplayWithController:(UIViewController *)controller{
    if (_controllerCur != controller) {
        controller.view.frame = self.bounds;
        __weak typeof (self) weakeSelf = self;
        [_mainController transitionFromViewController:_controllerCur toViewController:controller duration:0.2 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
            if (finished) {
                weakeSelf.controllerCur = controller;
            }
        }];
    }
}
@end






