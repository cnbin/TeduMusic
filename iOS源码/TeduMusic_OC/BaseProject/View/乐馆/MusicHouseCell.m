//
//  MusicHouseCell.m
//  BaseProject
//
//  Created by jiyingxin on 15/12/22.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicHouseCell.h"

@implementation MusicHouseCell

- (IBAction)clickRank:(id)sender {
    [_delegate musicHouseCell:self selectedItem:MusicItemTypeRank];
}

- (IBAction)clickMedia:(id)sender {
    [_delegate musicHouseCell:self selectedItem:MusicItemTypeMedia];
}

- (IBAction)clickCommunity:(id)sender {
    [_delegate musicHouseCell:self selectedItem:MusicItemTypeCommunity];
}

- (IBAction)clickChoose:(id)sender {
    [_delegate musicHouseCell:self selectedItem:MusicItemTypeChoose];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
