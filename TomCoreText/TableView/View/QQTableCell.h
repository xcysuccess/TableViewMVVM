//
//  QQTableCell.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/13.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QQViewModel;

#define QQTableCellHeight (100.f)
#define QQCELLIDENDIFIFY @"QQCELL_IDENDIFIFY"

@interface QQTableCell : UITableViewCell



- (void)configureForData:(QQViewModel*) viewModel;

@end
