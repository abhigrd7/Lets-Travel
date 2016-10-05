//
//  HomePageVC1.m
//  Let'sTravel
//
//  Created by Mac on 18/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "HomePageVC1.h"
#import "PageOneCollectionVC.h"
@interface HomePageVC1 ()

@end

@implementation HomePageVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    // Do any additional setup after loading the view from its nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btn1:(id)sender {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView: self.navigationController.view cache: NO];
    [UIView commitAnimations];

    
    
    PageOneCollectionVC *page1=[[PageOneCollectionVC alloc]initWithNibName:@"PageOneCollectionVC" bundle:nil];
    [self.navigationController pushViewController:page1 animated:YES];
    
    
}
@end
