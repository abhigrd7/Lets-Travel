//
//  TravelDiaryVC.h
//  Let'sTravel
//
//  Created by Mac on 24/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TravelDiaryVC : UIViewController<UITableViewDelegate,UITableViewDataSource,UINavigationControllerDelegate,UIImagePickerControllerDelegate,UITextFieldDelegate,UITextViewDelegate>

{
    NSMutableDictionary *AllDataDict;
    NSMutableArray *AllUserDataArray;
    
}


@property (weak, nonatomic) IBOutlet UITableView *TravelDTable;
@property (strong, nonatomic) IBOutlet UIView *UserInfo;
- (IBAction)BrowseButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *SetImage;
@property (weak, nonatomic) IBOutlet UITextField *TitleDiary;
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePickerObj;
@property (weak, nonatomic) IBOutlet UITextView *BodyTextObj;
- (IBAction)DatePickAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *DateTextField;

@end
