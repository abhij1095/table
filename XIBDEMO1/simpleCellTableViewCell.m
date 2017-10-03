//
//  simpleCellTableViewCell.m
//  XIBDEMO1
//
//  Created by Student P_10 on 27/09/17.
//  Copyright © 2017 Felixfwlixitfelixit. All rights reserved.
//

#import "simpleCellTableViewCell.h"

@implementation simpleCellTableViewCell
@synthesize label1 = _label1;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _label1.text = _color;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
