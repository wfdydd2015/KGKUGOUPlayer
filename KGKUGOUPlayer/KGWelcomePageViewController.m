//
//  KGWelcomePageViewController.m
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/15.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "KGWelcomePageViewController.h"

@interface KGWelcomePageViewController ()

@end

@implementation KGWelcomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    设置ScrowView，包括显示的图片 以及contentsize等；
    [self setupScrowView];
}
#pragma mark 设置ScrowView，包括显示的图片 以及contentsize等；
-(void)setupScrowView
{
    for (int i=0; i<5; i++) {
        UIImageView*imageview=[[UIImageView alloc]init];
        NSString *imagename=[NSString stringWithFormat:@"introduction_%i",i+1];
        [imageview setImage:[UIImage imageNamed:imagename]];
        imageview.frame=CGRectMake(i*[UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        [_welcomepage addSubview:imageview];
    }
    _welcomepage.contentSize=CGSizeMake(5*[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    _welcomepage.pagingEnabled=YES;
    _welcomepage.bounces=NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
