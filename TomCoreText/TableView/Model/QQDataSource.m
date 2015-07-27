//
//  QQDataSource.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/14.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQDataSource.h"
#import "QQTableCell.h"

@interface QQDataSource()

@property (nonatomic, copy)   NSArray  *items;
@property (nonatomic, copy)   NSString *cellIdentifier;
@property (nonatomic, copy)   TableViewCellConfigureBlock configureCellBlock;

@end


@implementation QQDataSource


-(instancetype)initWithItems:(NSArray *) aItems
          cellIdentifier:(NSString *)aCellIdentifier
      configureCellBlock:(TableViewCellConfigureBlock) aConfigureCellBlock
{
    if (self = [super init]) {
        self.items = aItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureCellBlock = [aConfigureCellBlock copy];
        
    }
    return self;
}


- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[(NSUInteger) indexPath.row];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"indexPath.row,indexPath.section:(%ld,%ld)",indexPath.row,indexPath.section);
    QQTableCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell,item);
    
    return cell;
}


@end
