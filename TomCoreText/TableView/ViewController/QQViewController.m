//
//  QQViewController.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/13.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQViewController.h"
#import "QQTableView.h"
#import "QQTableCell.h"
#import "QQDataSource.h"
#import "QQPageHandler.h"
#import "QQModel.h"
#import "QQControlHandler.h"

@interface QQViewController()<UITableViewDelegate>

//数据
@property(nonatomic,copy) NSArray *publicModelArray;
    
//tableView
@property(nonatomic,strong)    QQTableView  *qqTableView;
@property(nonatomic,strong)    QQDataSource *qqDataSource;
    
//事件Handler
@property(nonatomic,strong)    QQControlHandler *qqControlHandler;  //网络交互,数据库存储的逻辑
@property(nonatomic,strong)    QQPageHandler    *qqPageHandler;     //页面基础的逻辑

@end

@implementation QQViewController

-(instancetype)init
{
    if (self = [super init]) {
        self.qqPageHandler    = [[QQPageHandler alloc] init];
        self.qqControlHandler = [[QQControlHandler alloc] init];
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"MVVM";
    [self initData];
}


-(void)initData
{
    //模拟网络请求的操作
    __weak typeof(self) weakSelf = self;
    [_qqControlHandler requestQQModels:^(NSArray *arrayModels) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.publicModelArray = arrayModels;
        [strongSelf setupTableViewDataSource];
        [strongSelf refreshTableView];
    } failed:^(NSDictionary *userInfo) {
        
    }];
}
-(void)loadView
{
    [super loadView];
    
    _qqTableView = [[QQTableView alloc] initWithFrame:self.view.bounds];
    [_qqTableView registerClass:[QQTableCell class] forCellReuseIdentifier:QQCELLIDENDIFIFY];
    _qqTableView.delegate = self;
    [self.view addSubview:_qqTableView];
}

#pragma mark- TableView 数据源
-(void) refreshTableView
{
    [_qqTableView reloadData];
}

/* 设置表格的数据源 */
- (void)setupTableViewDataSource
{
    TableViewCellConfigureBlock configureCell = ^(QQTableCell *cell, id item){
        [cell configureForData:item];
    };
    _qqDataSource = [[QQDataSource alloc] initWithItems:_publicModelArray
                                         cellIdentifier:QQCELLIDENDIFIFY
                                     configureCellBlock:configureCell];
    
    _qqTableView.dataSource = _qqDataSource;
}

#pragma mark- TableView 委托事件
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return QQTableCellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [_qqPageHandler skipToTextDrawH:_publicModelArray[indexPath.row]  withViewController:self];
}

@end
