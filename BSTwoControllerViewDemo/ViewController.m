//
//  ViewController.m
//  BSTwoControllerViewDemo
//
//  Created by BaiShun on 2018/10/21.
//  Copyright © 2018 BaiShun. All rights reserved.
//

#import "ViewController.h"
#import "OneVC.h"
#import "TwoVC.h"
#import "BSTwoControllerView/BSTwoControllerView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet BSTwoControllerView *viewBottom;

@end

@implementation ViewController{
    OneVC *oneVC;
    TwoVC *twoVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    oneVC = [OneVC new];
    twoVC = [TwoVC new];
    [self.viewBottom initTwoControllerWithMainController:self controller1:oneVC controller2:twoVC];
}
- (IBAction)btnOneVC:(id)sender {
    [self.viewBottom setDisplayWithController:oneVC];
}

- (IBAction)btnTwoVC:(id)sender {
    [self.viewBottom setDisplayWithController:twoVC];
}

@end
