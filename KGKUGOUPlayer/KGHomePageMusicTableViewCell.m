//
//  KGHomePageMusicTableViewCell.m
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/17.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "KGHomePageMusicTableViewCell.h"

@implementation KGHomePageMusicTableViewCell

+(instancetype)HomePageMusicTableViewCellWithTableview:(UITableView *)tabelview
{
    static NSString*ID=@"homelistcell";
    KGHomePageMusicTableViewCell*cell=[tabelview dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell=[[KGHomePageMusicTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    cell.backgroundColor=[UIColor clearColor];
    cell.textLabel.textColor=[UIColor whiteColor];
    return cell;
}

-(void)setStatus:(KGMusicCellStatus *)status
{
    if (status.selected) {
        self.textLabel.textColor=[UIColor orangeColor];
        
    }else{
        self.textLabel.textColor=[UIColor whiteColor];
    }
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
