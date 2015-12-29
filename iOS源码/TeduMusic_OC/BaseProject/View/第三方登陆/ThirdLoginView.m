//
//  ThirdLoginView.m
//  BaseProject
//
//  Created by yingxin on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ThirdLoginView.h"

@implementation ThirdLoginView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

+ (ThirdLoginView *)thirdLoginViewWithDelegate:(id<ThirdLoginViewDelegate>)delegate{
    ThirdLoginView *v = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil].firstObject;
    v.delegate = delegate;
    return v;
}

- (IBAction)clickRenRen:(id)sender {
    [_delegate thirdLoginView:self selectLoginType:LoginTypeRenRen];
}

- (IBAction)clickWeChat:(id)sender {
    [_delegate thirdLoginView:self selectLoginType:LoginTypeWeChat];
}

- (IBAction)clickWeibo:(id)sender {
    [_delegate thirdLoginView:self selectLoginType:LoginTypeWeiBo];
}

@end
