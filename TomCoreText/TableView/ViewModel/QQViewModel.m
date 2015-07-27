//
//  QQViewModel.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/23.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQViewModel.h"
#import "QQModel.h"

@implementation QQViewModel

- (instancetype)initWithQQViewModel:(QQModel *)qqModel
{
    if (self = [super init]){
        
        self.qqModel = qqModel;
        
        self.content = [NSString stringWithFormat:@"%@ View",qqModel.title];
    }
    return self;
}

@end
