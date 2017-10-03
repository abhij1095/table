//
//  FirstViewController.m
//  XIBDEMO1
//
//  Created by Student P_10 on 14/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"FirstViewController";
    //self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonSystemItemAdd target:self action:@selector(navigate)];
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(navigate)];
    
    self.navigationItem.rightBarButtonItem = btn;
}
-(void)navigate
{
    SecondViewController *scv = [[SecondViewController alloc]init];
    
    [self.navigationController pushViewController:scv animated:YES];
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

- (IBAction)firstviewbutton:(id)sender {
    SecondViewController *scv = [[SecondViewController alloc]init];
    
    [self.navigationController pushViewController:scv animated:YES];
}
@end
