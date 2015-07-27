//
//  QQDataSource.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/14.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class QQTableCell;

typedef void (^TableViewCellConfigureBlock)(QQTableCell *cell, id item);


@interface QQDataSource : NSObject<UITableViewDataSource>

-(instancetype)initWithItems:(NSArray *) aItems
              cellIdentifier:(NSString *)aCellIdentifier
          configureCellBlock:(TableViewCellConfigureBlock) aConfigureCellBlock;

@end
