//
//  SecondViewController.m
//  XIBDEMO1
//
//  Created by Student P_10 on 14/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "SecondViewController.h"
#import "TableViewController.h"
#import "CustomCellTableViewCell.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(navigate)];
    
    self.navigationItem.rightBarButtonItem = btn;
}
-(void)navigate
{
    TableViewController *tvc = [[TableViewController alloc]init];
        
    [self.navigationController pushViewController:tvc animated:YES];

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

- (IBAction)secondviewbutton:(id)sender {
    TableViewController *tvc = [[TableViewController alloc]init];
    
    [self.navigationController pushViewController:tvc animated:YES];
}
@end
