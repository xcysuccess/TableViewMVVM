//
//  QQTableView.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/13.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQTableView.h"

@interface QQTableView()
@end

@implementation QQTableView

-(nonnull instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundView = nil;
        self.backgroundColor = [UIColor whiteColor];
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    }
        
    return self;
}




@end
