//
//  QQControlHandler.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/15.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^SAMRequestItemBlock)(NSArray *arrayModels);
typedef void(^SAMRequestFailedBlock)(NSDictionary *userInfo);

@interface QQControlHandler : NSObject

-(void) requestQQModels:(SAMRequestItemBlock)successBlock
                 failed:(SAMRequestFailedBlock)failedBlock;

@end
