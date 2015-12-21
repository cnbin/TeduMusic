//
//  TabBarVC.m
//  BaseProject
//
//  Created by jiyingxin on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TabBarVC.h"

@interface TabBarVC ()
@property(nonatomic,strong) UIView *topBarView;
@end

@implementation TabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.hidden = YES;
    self.topBarView.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIView *)topBarView {
	if(_topBarView == nil) {
		_topBarView = [[UIView alloc] init];
        _topBarView.backgroundColor = [UIColor colorFromHexCode:kNaviBGGreen16];
        [self.view addSubview:_topBarView];
        [_topBarView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(0);
            make.height.mas_equalTo(20 + 44);
        }];
	}
	return _topBarView;
}

@end



















