//
//  DiaryInfoCell.m
//  Let'sTravel
//
//  Created by Mac on 26/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "DiaryInfoCell.h"

@implementation DiaryInfoCell
@synthesize TitleLabel,DateAndTimeLabel,InfoLabel,imageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
