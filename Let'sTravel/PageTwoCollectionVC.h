//
//  PageTwoCollectionVC.h
//  Let'sTravel
//
//  Created by Mac on 14/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageTwoCollectionVC : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSMutableArray *secondArray;
    NSMutableDictionary *dict;
}
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionObject2;
@property NSInteger first;
@property NSDictionary *seconddict;
@property (weak, nonatomic) IBOutlet UILabel *BackView;
@end
