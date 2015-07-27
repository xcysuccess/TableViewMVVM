//
//  QQPageHandler.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/23.
//  Copyright (c) 2015年  tomxiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class QQViewModel;

@interface QQPageHandler : NSObject

-(void) skipToTextDrawH: (QQViewModel *) viewModel withViewController:(UIViewController *)superController;


@end
