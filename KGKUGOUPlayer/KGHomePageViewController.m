//
//  KGHomePageViewController.m
//  KGKUGOUPlayer
//
//  Created by neuedu on 15/9/15.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "KGHomePageViewController.h"
#import "KGHomePageMusicTableViewCell.h"
@interface KGHomePageViewController ()

@property(weak,nonatomic)UITableViewCell*curselectedcell;
@property(strong,nonatomic)NSMutableArray*cellStatus;
@end

@implementation KGHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableview.backgroundColor=[UIColor clearColor];
    self.tableview.tableFooterView=[[UIView alloc]initWithFrame:CGRectZero];
    [self mymusic:_mymusiclist];
}
-(NSMutableArray*)cellStatus
{
    if (_cellStatus==nil) {
        _cellStatus=[NSMutableArray array];
        for (int i=0; i<20; i++) {
            NSDictionary*dict=@{@"selected":@0};
            KGMusicCellStatus*status=[KGMusicCellStatus MusicCellStatusWithdict:dict];
            [_cellStatus addObject:status];
        }
    }
    return _cellStatus;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cellStatus.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    KGHomePageMusicTableViewCell*cell=[KGHomePageMusicTableViewCell HomePageMusicTableViewCellWithTableview:tableView];
    cell.textLabel.text=@"yy";
    cell.status=self.cellStatus[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    KGMusicCellStatus* status = self.cellStatus[indexPath.row];
    status.selected = YES;
    [self.tableview reloadData];
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    KGMusicCellStatus* status = self.cellStatus[indexPath.row];
    status.selected = NO;
    [self.tableview reloadData];
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}
- (IBAction)icon:(id)sender {
}

- (IBAction)logon:(id)sender {
}

- (IBAction)signin:(id)sender {
}

- (IBAction)switchbut:(UIButton *)sender {
        sender.selected = !sender.selected;
}

- (IBAction)mymusic:(UIButton *)sender {
    sender.selected=YES;
    _netmusiclist.selected=NO;
      _morelist.selected=NO;
}

- (IBAction)netmusic:(UIButton *)sender {
     sender.selected=YES;

    _mymusiclist.selected=NO;
    _morelist.selected=NO;
}

- (IBAction)more:(UIButton *)sender {
     sender.selected=YES;

    _netmusiclist.selected=NO;
    _mymusiclist.selected=NO;
}


@end
