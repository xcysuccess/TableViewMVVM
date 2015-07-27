//
//  QQPageHandler.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/23.
//  Copyright (c) 2015年  tomxiang. All rights reserved.
//

#import "QQPageHandler.h"
#import "QQViewModel.h"
#import "QQTextDrawH.h"
#import "QQBaseViewController.h"
#import "QQModel.h"

@implementation QQPageHandler

-(void) skipToTextDrawH: (QQViewModel *) viewModel withViewController:(UIViewController *)superController
{
    QQBaseViewController *viewController = [[QQBaseViewController alloc] init];
    
    //    Art",@"Frame",@"Font",@"Horizontal",@"Vertical",@"TextKit"
    
    if ([viewModel.qqModel.title isEqualToString:@"Horizontal"]) {
        QQTextDrawH *qqtextDrawH = [[QQTextDrawH alloc] init];
        qqtextDrawH.frame = superController.view.frame;
        viewController.view = qqtextDrawH;
        viewController.title = @"Horizontal";
    }
    
    [superController.navigationController pushViewController:viewController animated:YES];
}

@end
