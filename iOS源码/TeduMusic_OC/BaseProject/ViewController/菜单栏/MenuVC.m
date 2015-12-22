//
//  MenuVC.m
//  BaseProject
//
//  Created by jiyingxin on 15/12/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MenuVC.h"

@interface MenuVC ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

/** 表格内容 */
@property(nonatomic,strong) NSArray *items;
@end

@implementation MenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count +1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row) {
        return 50;
    }
    return 160;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row) {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        UILabel *lb = (UILabel *)[cell.contentView viewWithTag:100];
        lb.text = self.items[indexPath.row - 1];
        lb.textColor = [UIColor grayColor];
    }
}
- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row) {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        UILabel *lb = (UILabel *)[cell.contentView viewWithTag:100];
        lb.text = self.items[indexPath.row - 1];
        lb.textColor = [UIColor colorFromHexCode:kTitleColorWhite16];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"Cell0";
    if (indexPath.row) {
        identify = @"Cell1";
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (indexPath.row) { //非0
        UILabel *lb = (UILabel *)[cell.contentView viewWithTag:100];
        lb.text = self.items[indexPath.row - 1];
    }else{
        
    }
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSArray *)items {
	if(_items == nil) {
		_items = [[NSArray alloc] initWithObjects:@"会员中心", @"流量月包", @"音效", @"听歌识曲", @"意见反馈", @"设置", nil];
	}
	return _items;
}

@end
