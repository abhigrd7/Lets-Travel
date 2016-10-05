//
//  AppDelegate.h
//  Let'sTravel
//
//  Created by Mac on 08/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomePageVC1.h"
#import "TravelDiaryVC.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    HomePageVC1 *obj;
    TravelDiaryVC *obj1;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *nav11;
@property (strong, nonatomic) UINavigationController *nav2;


@end

