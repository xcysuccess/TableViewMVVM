//
//  QQBaseViewController.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/15.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQBaseViewController.h"

@implementation QQBaseViewController

-(instancetype)init
{
    if(self = [super init]){
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    return self;
}

@end
