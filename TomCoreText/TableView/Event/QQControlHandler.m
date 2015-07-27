//
//  QQControlHandler.m
//  TomCoreText
//
//  Created by  tomxiang on 15/7/15.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import "QQControlHandler.h"
#import "QQModel.h"
#import "QQViewModel.h"

@interface QQControlHandler()
@property(nonatomic,strong) NSMutableArray* sourceQQModels;
@end

@implementation QQControlHandler


-(instancetype)init
{
    if(self = [super init]){
        self.sourceQQModels = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void) requestQQModels:(SAMRequestItemBlock)successBlock
                 failed:(SAMRequestFailedBlock)failedBlock
{
    //xxx网络操作
    NSArray *array = @[@"Art",@"Frame",@"Font",@"Horizontal",@"Vertical",@"TextKit"];
    for (int i = 0; i < array.count; ++i) {
        
        NSString *title = array[i];
        QQModel *model = [[QQModel alloc] initWithQQModel:title];
        QQViewModel *viewModel = [[QQViewModel alloc] initWithQQViewModel:model];
        [self.sourceQQModels addObject:viewModel];
    }
    
    successBlock(_sourceQQModels);
}


@end
