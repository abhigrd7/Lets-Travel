//
//  PageTwoCollectionVC.m
//  Let'sTravel
//
//  Created by Mac on 14/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "PageTwoCollectionVC.h"
#import "PageTwoCollectionViewCell1.h"
#import "DisplayDataTable.h"

@interface PageTwoCollectionVC ()


@end

@implementation PageTwoCollectionVC
@synthesize CollectionObject2,first;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    secondArray=[[NSMutableArray alloc]initWithObjects:@"PlacesInfo.jpg",@"Places Info.jpg", @"PlacesName.jpg",@"HotelImage.jpg",@"HotelName.jpg",@"maps.jpg",nil];
    
    [CollectionObject2 registerNib:[UINib nibWithNibName:@"PageTwoCollectionViewCell1" bundle:nil] forCellWithReuseIdentifier:@"Cell"];// since super class is UIViewController.
    dict=[[NSMutableDictionary alloc]initWithDictionary:self.seconddict];
    self.navigationItem.title=[dict valueForKey:@"titlename"];
    self.navigationController.navigationBar.topItem.title=@"";
    self.navigationController.navigationBarHidden=NO;


    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return secondArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId=@"Cell";
    PageTwoCollectionViewCell1 *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    if(cell ==nil)
    {
        NSLog(@"%@",[[NSBundle mainBundle] loadNibNamed:@"PageTwoCollectionViewCell1" owner:self options:0]);
        cell=[[[NSBundle mainBundle] loadNibNamed:@"PageTwoCollectionViewCell1" owner:self options:0] objectAtIndex:0];
    }
    
    cell.ImgView1.image=[UIImage imageNamed:[secondArray objectAtIndex:indexPath.row]];
    cell.lbl1.text =[secondArray objectAtIndex:indexPath.row];

    return cell;
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    
    
    
    
    [UIView commitAnimations];
    
    if(indexPath.item==0)
    {
        
       // TableVC1 *table1=[[TableVC1 alloc]initWithNibName:@"TableVC1" bundle:nil];
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"PlacesName"];
        [self.navigationController pushViewController:table2 animated:YES];
        
        table2.IndexID=indexPath.item;
    
    }
    if(indexPath.item==1)
    {
        
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"PlacesInfo"];
        [self.navigationController pushViewController:table2 animated:YES];
        table2.IndexID=indexPath.item;
        
    }
    if(indexPath.item==2)
    {
        
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"PlaceImages"];
        [self.navigationController pushViewController:table2 animated:YES];
        table2.IndexID=indexPath.item;
        
    }
    if(indexPath.item==3)
    {
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"HotelsImage"];
        [self.navigationController pushViewController:table2 animated:YES];
        
        table2.IndexID=indexPath.item;
        
    }
    if(indexPath.item==4)
    {
        
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"Hotel"];
        [self.navigationController pushViewController:table2 animated:YES];
        table2.IndexID=indexPath.item;
        
    }
    if(indexPath.item==5)
    {
        
        DisplayDataTable *table2=[[DisplayDataTable alloc]initWithNibName:@"DisplayDataTable" bundle:nil];
        
        table2.places=[dict valueForKey:@"CityMap"];
        [self.navigationController pushViewController:table2 animated:YES];
        table2.IndexID=indexPath.item;
        
    }


}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
