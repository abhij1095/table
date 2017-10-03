//
//  PickerViewController.h
//  XIBDEMO1
//
//  Created by Student P_10 on 15/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *picker1;
@property(nonatomic,retain)NSMutableArray *colorarray;
@end
