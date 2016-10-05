//
//  DiaryInfoCell.h
//  Let'sTravel
//
//  Created by Mac on 26/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiaryInfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *DateAndTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *InfoLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ImgView;

@end
