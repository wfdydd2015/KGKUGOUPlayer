//
//  KGHomePageMusicTableViewCell.h
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/17.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KGMusicCellStatus.h"
@interface KGHomePageMusicTableViewCell : UITableViewCell
@property(strong,nonatomic)KGMusicCellStatus*status;
+(instancetype)HomePageMusicTableViewCellWithTableview:(UITableView*)tabelview;
@end
