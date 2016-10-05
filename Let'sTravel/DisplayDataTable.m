//
//  DisplayDataTable.m
//  Let'sTravel
//
//  Created by Mac on 23/07/16.
//  Copyright © 2016 Abhi'sMac. All rights reserved.


#import "DisplayDataTable.h"
#import "DisplayCustomCell.h"
#import "InfoDisplayCell.h"

@interface DisplayDataTable ()

@end

@implementation DisplayDataTable


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.places);
    self.TableViewObject.backgroundColor=[UIColor clearColor];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(_IndexID == 0)
    {
        return 80;
    }
    else if(_IndexID == 1)
    {
        return 168;
    }
    else if(_IndexID == 2)
    {
        return 168;
    }
    else if (_IndexID == 3)
    {
        return 168;
    }
    else if(_IndexID ==4)
    {
        return 80;
    }
    else
    {
        return 650;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_places count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
   
    static NSString *CellIdentifier = @"Cell";
    DisplayCustomCell *cell;
    InfoDisplayCell *cell1;
    
    if(_IndexID == 0)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = [_places objectAtIndex:indexPath.row];
        return cell;
    }
    
    if(_IndexID == 1)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell == nil)
        {
            //cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            
            cell1=[[[NSBundle mainBundle]loadNibNamed:@"InfoDisplayCell" owner:self options:0]objectAtIndex:0];
        }
    
        cell1.InfoTxtObject.text = [_places objectAtIndex:indexPath.row];
        return cell1;
    }

    if(_IndexID == 2)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell==nil)
        {
            cell=[[[NSBundle mainBundle]loadNibNamed:@"DisplayCustomCell" owner:self options:0]objectAtIndex:0];
        }
        cell.DIsplayImage.image = [UIImage imageNamed:[_places objectAtIndex:indexPath.row]];
        return cell;
    }
    
        if(_IndexID == 3)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell==nil)
        {
            cell=[[[NSBundle mainBundle]loadNibNamed:@"DisplayCustomCell" owner:self options:0]objectAtIndex:0];
        }
        cell.DIsplayImage.image = [UIImage imageNamed:[_places objectAtIndex:indexPath.row]];
        return cell;
    }
    
    if(_IndexID == 4)
    {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if(cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        cell.textLabel.text = [_places objectAtIndex:indexPath.row];
        return cell;
    }

    if(_IndexID == 5)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell==nil)
        {
            cell=[[[NSBundle mainBundle]loadNibNamed:@"DisplayCustomCell" owner:self options:0]objectAtIndex:0];
        }
        cell.DIsplayImage.image = [UIImage imageNamed:[_places objectAtIndex:indexPath.row]];
        return cell;
    }
    
    return cell;
    
    //cell.backgroundView = [[UIView new] autorelease];
    //cell.selectedBackgroundView = [[UIView new] autorelease];

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
