//
//  PageOneCollectionVC.h
//  Let'sTravel
//
//  Created by Mac on 12/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSMutableDictionary+DataDictionary.h"

@interface PageOneCollectionVC : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

{
    NSMutableArray *firstArray;
    NSMutableDictionary *maindict;
    
    NSMutableDictionary *AllPlistDataDict;
    NSMutableArray *AllPlistDataArray;
    
}

@property (weak, nonatomic) IBOutlet UICollectionView *CollectionObject;
@property (strong, nonatomic) IBOutlet UIView *PlanView;
@property (weak, nonatomic) IBOutlet UITextField *DestTextFIeld;
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePickerObject;

@property (weak, nonatomic) IBOutlet UITextField *DateFromPickerTF;

@property (weak, nonatomic) IBOutlet UITextView *ThingsToDoTV;
- (IBAction)SetDateInTextField:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *Test;
@property (weak, nonatomic) IBOutlet UITableView *TestTable;

@end


