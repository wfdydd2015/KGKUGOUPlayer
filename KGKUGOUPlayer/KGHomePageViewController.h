//
//  KGHomePageViewController.h
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/15.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KGHomePageViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
- (IBAction)icon:(UIButton *)sender;
- (IBAction)logon:(UIButton *)sender;
- (IBAction)signin:(UIButton *)sender;
- (IBAction)switchbut:(UIButton *)sender;
- (IBAction)mymusic:(UIButton *)sender;
- (IBAction)netmusic:(UIButton *)sender;

- (IBAction)more:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (weak, nonatomic) IBOutlet UIImageView *arrow;
@property (weak, nonatomic) IBOutlet UIButton *mymusiclist;
@property (weak, nonatomic) IBOutlet UIButton *netmusiclist;
@property (weak, nonatomic) IBOutlet UIButton *morelist;

@end
