//
//  TabBarVC.m
//  BaseProject
//
//  Created by jiyingxin on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TabBarVC.h"
#import "TopBarView.h"

@interface TabBarVC ()<TopBarViewDelegate>
@property(nonatomic,strong) TopBarView *topBarView;
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
        _topBarView = [[NSBundle mainBundle] loadNibNamed:@"TopBarView" owner:nil options:nil].firstObject;
        [self.view addSubview:_topBarView];
        [_topBarView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(0);
            make.height.mas_equalTo(64);
        }];
        _topBarView.delegate = self;
	}
	return _topBarView;
}

#pragma mark - TopBarViewDelegate
- (void)topBarView:(TopBarView *)topBarView clicksBtnWithType:(TopBarViewBtnType)btnType{
    switch (btnType) {
        case TopBarViewBtnTypeHeader: {
            [self.sideMenuViewController presentLeftMenuViewController];
            break;
        }
        case TopBarViewBtnTypeMy: {
            
            break;
        }
        case TopBarViewBtnTypeDiscover: {
            
            break;
        }
        case TopBarViewBtnTypeMusicHouse: {
            
            break;
        }
        case TopBarViewBtnTypeSearch: {
            
            break;
        }
    }
}

@end



















