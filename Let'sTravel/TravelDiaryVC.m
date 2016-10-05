//
//  TravelDiaryVC.m
//  Let'sTravel
//
//  Created by Mac on 24/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.
//

#import "TravelDiaryVC.h"
#import "DiaryInfoCell.h"

@interface TravelDiaryVC ()
{
    UIBarButtonItem *SaveButton;
    UIBarButtonItem *BackButton;
    UIBarButtonItem *addButton;
}

@end

@implementation TravelDiaryVC
@synthesize SetImage,TitleDiary,DatePickerObj,BodyTextObj,DateTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self AddButton];
    
    
    BackButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain  target:self action:@selector(backButtonPressed)];
    self.navigationItem.leftBarButtonItem=nil;

    
    //UINavigationController *navDiary=[[UINavigationController alloc]init];
    self.navigationItem.title=@"Travel Diary";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0/255.0 green:153/255.0 blue:204/255.0 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    self.navigationController.navigationBarHidden=NO;
self.navigationItem.rightBarButtonItem = addButton;
    [self DisplayData];
    // Do any additional setup after loading the view from its nib.
}

-(void)AddButton
{
    addButton = [[UIBarButtonItem alloc]
                 initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                 target:self action:@selector(addButtonPressed)];
    self.navigationItem.rightBarButtonItem=addButton;

}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.leftBarButtonItem=nil;
}

-(void)StoreData
{
//NSArray *toatlDiary=[[NSArray alloc]init]
    UIImage *UploadImage=SetImage.image;
    NSData *tempData=UIImageJPEGRepresentation(UploadImage,100);
    NSArray *UploadArray =[[NSArray alloc]initWithObjects:TitleDiary.text,DateTextField.text,BodyTextObj.text,tempData,nil];
    NSString *FilePath=@"/Users/mac/Desktop/iOSProjectsAbhi /Let'sTravel/Let'sTravel/User Information.plist";
    AllDataDict=[[NSMutableDictionary alloc]initWithContentsOfFile:FilePath];
    AllUserDataArray=[[NSMutableArray alloc]initWithArray:[AllDataDict valueForKey:@"TravelDiary"]];
    [AllUserDataArray addObject:UploadArray];
    [AllDataDict removeObjectForKey:@"TravelDiary"];
    [AllDataDict setObject:AllUserDataArray forKey:@"TravelDiary"];
    [AllDataDict writeToFile:FilePath atomically:YES];
    [self DisplayData];
    
}

-(void)DisplayData
{
    NSString *FilePath=@"/Users/mac/Desktop/iOSProjectsAbhi /Let'sTravel/Let'sTravel/User Information.plist";
    NSMutableDictionary *AllDataDict1=[[NSMutableDictionary alloc] initWithContentsOfFile:FilePath];
    AllUserDataArray=[[NSMutableArray alloc]initWithArray:[AllDataDict1 valueForKey:@"TravelDiary"]];
    [_TravelDTable reloadData];
                      
}


-(void)addButtonPressed
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    [UIView commitAnimations];
    
    _UserInfo.frame=CGRectMake(_TravelDTable.frame.origin.x, _TravelDTable.frame.origin.y, _TravelDTable.frame.size.width,_TravelDTable.frame.size.height );
    
    [self.view addSubview:_UserInfo];
    //_UserInfo=[[UIView alloc]init];
    //_UserInfo=[[UIView alloc]initWithFrame:CGRectMake(_TravelDTable.frame.origin.x, _TravelDTable.frame.origin.y, _TravelDTable.frame.size.width,_TravelDTable.frame.size.height )];
    
    SaveButton = [[UIBarButtonItem alloc]initWithTitle:@"Save" style:UIBarButtonItemStylePlain target:self action:@selector(saveButtonPressed)];

    self.navigationItem.rightBarButtonItem=SaveButton;
    self.navigationItem.leftBarButtonItem=BackButton;

}

-(void)saveButtonPressed
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionCurlUp forView: self.navigationController.view cache: NO];
    [UIView commitAnimations];
    [self StoreData];
    [_UserInfo removeFromSuperview];
   // self.navigationItem.rightBarButtonItem=nil;
    
    self.navigationItem.leftBarButtonItem=nil;
    [self AddButton];
    
    }

-(void)backButtonPressed

{
    [_UserInfo removeFromSuperview];
    self.navigationItem.leftBarButtonItem=nil;
    [self AddButton];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [AllUserDataArray count];
   // return [[AllDataDict objectForKey:@"TravelDiary"] count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSString *FilePath=@"/Users/mac/Desktop/iOSProjectsAbhi /Let'sTravel/Let'sTravel/User Information.plist";
    NSMutableDictionary *AllDataDict1=[[NSMutableDictionary alloc] initWithContentsOfFile:FilePath];
    static NSString *reuseID=@"reuseID";
    DiaryInfoCell *cell=(DiaryInfoCell *)[tableView dequeueReusableCellWithIdentifier:reuseID];
    if(cell == nil)
    {
        cell=[[[NSBundle mainBundle]loadNibNamed:@"DiaryInfoCell" owner:self options:0]objectAtIndex:0];
    }

    cell.TitleLabel.text=[[AllUserDataArray objectAtIndex:indexPath.row]objectAtIndex:0];
    cell.DateAndTimeLabel.text=[[AllUserDataArray objectAtIndex:indexPath.row]objectAtIndex:1];
    cell.InfoLabel.text=[[AllUserDataArray objectAtIndex:indexPath.row]objectAtIndex:2];
    if ([[AllUserDataArray objectAtIndex:indexPath.row] count] >3)
    {
    NSData *imageData=[[AllUserDataArray objectAtIndex:indexPath.row]objectAtIndex:3];
    UIImage *travelImage=[UIImage imageWithData:imageData];
    cell.ImgView.image=travelImage;
    }

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 300;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return 1;
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

- (IBAction)BrowseButton:(id)sender
{
    
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.delegate=self;
    picker.allowsEditing=YES;
    picker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:NULL];
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *img=info[UIImagePickerControllerEditedImage];
   self.SetImage.image=img;
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (IBAction)DatePickAction:(id)sender {
    NSDateFormatter *DateFormat=[[NSDateFormatter alloc]init];
    [DateFormat setDateStyle:NSDateFormatterMediumStyle];
    [DateFormat setTimeStyle:NSDateFormatterMediumStyle];
    DateTextField.text=[DateFormat stringFromDate:[DatePickerObj date]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [BodyTextObj resignFirstResponder];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    
    if([text isEqualToString:@"\n"])
    
    {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}
@end
