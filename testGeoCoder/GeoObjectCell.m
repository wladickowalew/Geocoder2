//
//  GeoObjectCell.m
//  testGeoCoder
//
//  Created by Student on 21.02.2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "GeoObjectCell.h"
#import "GeoObject.h"

@implementation GeoObjectCell{
    
    __weak IBOutlet UILabel *nameLbl;
    __weak IBOutlet UILabel *posLbl;
    __weak IBOutlet UITextView *descriptoinTV;
}
-(void)cellUpdateWithGoeObject:(GeoObject *) obj
{
    [nameLbl setText: [obj name]];
    [descriptoinTV setText:[obj descr]];
    [posLbl setText:[obj GetPos]];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
