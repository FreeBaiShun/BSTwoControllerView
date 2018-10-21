# BSTwoControllerView
点击按钮实现两个界面的切换，如果用一个controller管理，那么代码显得过于庞大。这时候用BSTwoControllerView可以优雅的把代码分在两个controller来管理。

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
