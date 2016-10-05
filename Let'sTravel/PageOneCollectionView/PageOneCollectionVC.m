//
//  PageOneCollectionVC.m
//  Let'sTravel
//
//  Created by Mac on 12/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "PageOneCollectionVC.h"
#import "PageOneCollectionViewCell.h"
#import "PageTwoCollectionVC.h"

@interface PageOneCollectionVC ()
{
    UIBarButtonItem *MyPlansButton;
    UIBarButtonItem *SaveButton;
    UIBarButtonItem *BackButton;
}


@end

@implementation PageOneCollectionVC

@synthesize CollectionObject,PlanView,DestTextFIeld,DatePickerObject,DateFromPickerTF,ThingsToDoTV;

- (void)viewDidLoad {
    [super viewDidLoad];
    firstArray=[[NSMutableArray alloc]initWithObjects:@"mumbai.jpg",@"Delhi.jpg",@"GoaCity.jpg",@"Pune.jpg",@"Jaipur City.jpg",@"ManaliCIty.jpg",@"Hyderabad City.jpg",@"BengaluruCity.jpg",@"Kerala city.jpg",@"Kolkata City.jpg",nil];
    maindict=[[NSMutableDictionary alloc]initWithDictionary:[NSMutableDictionary DataDictionary]];
    [self Button];
    
    [CollectionObject registerNib:[UINib nibWithNibName:@"PageOneCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"Cell"];// since super class is UIViewController.

    self.navigationItem.title=@"Lets Travel";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0/255.0 green:153/255.0 blue:204/255.0 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar
    setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.navigationController.navigationBarHidden=NO;

}

-(void)Button
{
    MyPlansButton = [[UIBarButtonItem alloc]
                 initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                 target:self action:@selector(MyPlansButtonPressed)];
    self.navigationItem.rightBarButtonItem=MyPlansButton;
    
}

-(void)MyPlansButtonPressed
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    [UIView commitAnimations];

    [self.view addSubview:PlanView];

   //PlanView.frame=CGRectMake(_TestTable.frame.origin.x, _TestTable.frame.origin.y, _TestTable.frame.size.width,_TestTable.frame.size.height );

    //PlanView.frame = CGRectMake(70, 110, PlanView.frame.size.width,
   //[PlanView setFrame:CGRectMake(10, 100, PlanView.frame.size.width, PlanView.frame.size.height)];
    
    SaveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveButtonPressed)];
    
    self.navigationItem.rightBarButtonItem=SaveButton;
    self.navigationItem.leftBarButtonItem=BackButton;

    self.navigationItem.title=@"My Plans";
}

-(void)saveButtonPressed
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    [UIView commitAnimations];
    [self StoreData];
    [PlanView removeFromSuperview];
    [self Button];
    //self.navigationItem.rightBarButtonItem


}

-(void)StoreData
{
    NSArray *UploadData=[[NSArray alloc]initWithObjects:DestTextFIeld.text,DateFromPickerTF.text,ThingsToDoTV.text,nil];
    NSString *FilePath=@"/Users/mac/Desktop/iOSProjectsAbhi /Let'sTravel/Let'sTravel/User Information.plist";
    AllPlistDataDict=[[NSMutableDictionary alloc]initWithContentsOfFile:FilePath];
    AllPlistDataArray=[[NSMutableArray alloc]initWithArray:[AllPlistDataDict valueForKey:@"MyPlans"]];
    [AllPlistDataArray addObject:UploadData];
    [AllPlistDataDict removeObjectForKey:@"MyPlans"];
    [AllPlistDataDict setObject:AllPlistDataArray forKey:@"MyPlans"];
    [AllPlistDataDict writeToFile:FilePath atomically:YES];
    [self DisplayData];
    
}

-(void)DisplayData
{
NSString *FilePath=@"/Users/mac/Desktop/iOSProjectsAbhi /Let'sTravel/Let'sTravel/User Information.plist";
    NSMutableDictionary *AllPlistDataDict1=[[NSMutableDictionary alloc]initWithContentsOfFile:FilePath];
    AllPlistDataArray=[[NSMutableArray alloc]initWithArray:[AllPlistDataDict1 valueForKey:@"MyPlans"]];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [firstArray count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId=@"Cell";
    PageOneCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath
                              ] ;
    if(cell ==nil)
    {
        NSLog(@"%@",[[NSBundle mainBundle] loadNibNamed:@"PageOneCollectionViewCell" owner:self options:0]);
        cell=[[[NSBundle mainBundle] loadNibNamed:@"PageOneCollectionViewCell" owner:self options:0] objectAtIndex:0];
    }
    
    cell.ImgView.image=[UIImage imageNamed:[firstArray objectAtIndex:indexPath.row]];
    
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;
{
   
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    
    if(indexPath.item == 0)
    {
       PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"0"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 1)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"1"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 2)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"2"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 3)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"3"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 4)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"4"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 5)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"5"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 6)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"6"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 7)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"7"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 8)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"8"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
    if(indexPath.item == 9)
    {
        PageTwoCollectionVC *pageTwo=[[PageTwoCollectionVC alloc]initWithNibName:@"PageTwoCollectionVC" bundle:nil];
        pageTwo.seconddict=[maindict valueForKey:@"9"];
        [self.navigationController pushViewController:pageTwo animated:YES];
    }
[UIView commitAnimations];

}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)SetDateInTextField:(id)sender {
    NSDateFormatter *DateFormat=[[NSDateFormatter alloc]init];
    [DateFormat setDateStyle:NSDateFormatterMediumStyle];
    [DateFormat setTimeStyle:NSDateFormatterMediumStyle];
    DateFromPickerTF.text=[DateFormat stringFromDate:[DatePickerObject date]];
}
@end
