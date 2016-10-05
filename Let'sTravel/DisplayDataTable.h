//
//  DisplayDataTable.h
//  Let'sTravel
//
//  Created by Mac on 23/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplayDataTable : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *TableViewObject;
@property NSInteger IndexID;
@property(nonatomic,strong) NSArray *places;
@property(nonatomic,strong) NSArray *placesInfo;

@end
