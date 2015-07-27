//
//  QQViewModel.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/23.
//  Copyright © 2015年  tomxiang. All rights reserved.
//  http://objccn.io/issue-13-1/

#import <Foundation/Foundation.h>
@class QQModel;

@interface QQViewModel : NSObject

- (instancetype)initWithQQViewModel:(QQModel *)qqModel;

@property (nonatomic, strong) QQModel *qqModel;

@property(copy,nonatomic) NSString *content;

@end
