# BSTwoControllerView
左右切换controller工具

# 效果
![image](https://github.com/FreeBaiShun/BSTwoControllerView/blob/master/BSTwoControllerView.gif)

# 用法
pod 'BSTwoControllerView'

```
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
```
