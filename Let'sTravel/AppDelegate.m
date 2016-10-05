//
//  AppDelegate.m
//  Let'sTravel
//
//  Created by Mac on 08/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.


#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize nav11,nav2;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    //Tab Bar
     
    UITabBarController *tabBarCObject=[[UITabBarController alloc]init];
    
    HomePageVC1 *Home=[[HomePageVC1 alloc]initWithNibName:@"HomePageVC1" bundle:nil];
    nav11=[[UINavigationController alloc]initWithRootViewController:Home];
    
    TravelDiaryVC *Diary=[[TravelDiaryVC alloc]initWithNibName:@"TravelDiaryVC" bundle:nil];
    nav2=[[UINavigationController alloc]initWithRootViewController:Diary];
    
   
    
    NSArray *array=[[NSArray alloc]initWithObjects:nav11,nav2, nil];
    tabBarCObject.viewControllers=array;
    UITabBar *tabBar=[tabBarCObject tabBar];
    NSLog(@"%@",tabBar.items);
    
    
    [[tabBar.items objectAtIndex:0] setTitle:@""];
    
    
    [[tabBar.items objectAtIndex:1] setTitle:@""];
    
    
    
    
    [tabBarCObject setSelectedIndex:0];
    
    
    
    nav11.tabBarItem.image=[[UIImage imageNamed:@"TabImg.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    nav2.tabBarItem.image=[[UIImage imageNamed:@"DiaryImg.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIImage* tabBarBackground = [UIImage imageNamed:@""];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"trans.png"]];
    
    
    self.window.rootViewController=tabBarCObject;
 
    
    
    //obj=[[HomePageVC1 alloc]initWithNibName:@"HomePageVC1" bundle:nil];
    //UINavigationController *nav1=[[UINavigationController alloc]initWithRootViewController:obj];
    //self.window.rootViewController=nav11;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
