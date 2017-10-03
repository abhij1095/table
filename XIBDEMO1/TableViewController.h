//
//  TableViewController.h
//  XIBDEMO1
//
//  Created by Student P_10 on 13/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *table1;

@property(nonatomic,retain)NSMutableArray *cityarray,*colorarray;

@end
