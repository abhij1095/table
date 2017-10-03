//
//  PickerViewController.m
//  XIBDEMO1
//
//  Created by Student P_10 on 15/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _colorarray = [[NSMutableArray alloc]initWithObjects:@"Red",@"blue",@"Green",@"Yellow",@"White",@"Black", nil];
    
   
}
-(void)navigate
{
    PickerViewController *pvc = [[PickerViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _colorarray.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
        return [_colorarray objectAtIndex:row];
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

@end
