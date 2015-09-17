//
//  KGMusicCellStatus.h
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/17.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KGMusicCellStatus : NSObject
@property(assign,nonatomic)BOOL selected;
+(instancetype)MusicCellStatusWithdict:(NSDictionary*)dict;
@end
