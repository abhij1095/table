//
//  TableViewController.m
//  XIBDEMO1
//
//  Created by Student P_10 on 13/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCellTableViewCell.h"
#import "PickerViewController.h"
#import "simpleCellTableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _cityarray = [[NSMutableArray alloc]initWithObjects:@"Sangli",@"Kolhapur",@"Pune",@"Gadhinglaj",@"Nashik", nil];
    
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Red",@"blue",@"Green",@"Yellow",@"White",@"Black", nil];
    [self.table1 registerNib:[UINib nibWithNibName:@"CustomCellTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(navigate)];
    
    self.navigationItem.rightBarButtonItem = btn;
    
}

-(void)navigate
{
    PickerViewController *pvc = [[PickerViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    if(section==0)
    {
        return _cityarray.count;
    }
    else
    {
        return _colorarray.count;
    }
}
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    if (section==0)
//    {
//        return @"City";
//    }
//    else
//        
//    {
//        return @"Color";
//    }
//}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
//    if(indexPath.section==0)
//    {
//    
//        cell.textLabel.text = [_cityarray objectAtIndex:indexPath.row];
//    }
//    else
//    {
//        cell.textLabel.text = [_colorarray objectAtIndex:indexPath.row];
//    }
//    CustomCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    //cell.label1.text = [_cityarray objectAtIndex:indexPath.row];
    //return cell;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"simpleCellTableViewCell"];
    cell.textLabel.text = [_colorarray objectAtIndex:indexPath.row];
    return cell;
    
    
}
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSString *cname = [_colorarray objectAtIndex:indexPath.row];
//    
//    simpleCellTableViewCell *ctvc = [[simpleCellTableViewCell alloc]init];
//    ctvc.color = cname;
//    
//    [self.navigationController pushViewController:ctvc animated:YES];
//    
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];}
    // Dispose of any resources that can be recreate

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
