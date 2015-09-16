//
//  KGWelcomePageViewController.m
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/15.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "KGWelcomePageViewController.h"
#import "KGHomePageViewController.h"
@interface KGWelcomePageViewController ()

@end

@implementation KGWelcomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _welcomepage.frame=[UIScreen mainScreen].bounds;
    _PageControl.center=CGPointMake([UIScreen mainScreen].bounds.size.width/2, 637.0f/667.0f*[UIScreen mainScreen].bounds.size.height);
    
    // Do any additional setup after loading the view.
//    设置ScrowView，包括显示的图片 以及contentsize等；
    [self setupScrowView];

    _PageControl.numberOfPages=5;
}
#pragma mark 设置ScrowView，包括显示的图片 以及contentsize等；
-(void)setupScrowView
{
    for (int i=0; i<5; i++) {
        UIImageView*imageview=[[UIImageView alloc]init];
        NSString *imagename=[NSString stringWithFormat:@"introduction_%i",i+1];
        [imageview setImage:[UIImage imageNamed:imagename]];
        imageview.frame=CGRectMake(i*[UIScreen mainScreen].bounds.size.width, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        if (i==4) {
            [self AddStartButton:imageview];
        }
        
        [_welcomepage addSubview:imageview];
    }
    _welcomepage.contentSize=CGSizeMake(5*[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
    _welcomepage.pagingEnabled=YES;
    _welcomepage.bounces=NO;
}
- (BOOL)translatesAutoresizingMaskIntoConstraints
{
    return YES;
}
#pragma mark 添加开启音乐之旅的按钮
-(void)AddStartButton:(UIImageView*)imageview
{
    imageview.userInteractionEnabled=YES;
    
    UIButton*startbutton=[[UIButton alloc]init];
    startbutton.bounds=CGRectMake(0, 0, 122, 32);
    startbutton.center=CGPointMake([UIScreen mainScreen].bounds.size.width*0.5, 0.85*[UIScreen mainScreen].bounds.size.height);

    [startbutton setBackgroundImage:[UIImage imageNamed:@"introduction_enter_nomal"] forState:UIControlStateNormal];
    [startbutton setBackgroundImage:[UIImage imageNamed:@"introduction_enter_press"] forState:UIControlStateHighlighted];
    [imageview addSubview:startbutton];
     [self.view bringSubviewToFront:startbutton];
    [startbutton addTarget:self action:@selector(startMusicChip:) forControlEvents:UIControlEventTouchUpInside];
    
}
#pragma make 开启音乐之旅
-(void)startMusicChip:(UIButton*)sender
{
//直接将主页设置为window的rootviewcontorller 这样就不会再回到欢迎页；
    UIStoryboard*storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    KGHomePageViewController*homeVC=[storyboard instantiateViewControllerWithIdentifier:@"homePage"];
    [UIApplication sharedApplication].keyWindow.rootViewController=homeVC;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSUInteger number =(NSUInteger)_welcomepage.contentOffset.x/[UIScreen mainScreen].bounds.size.width;
    _PageControl.currentPage=number;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
