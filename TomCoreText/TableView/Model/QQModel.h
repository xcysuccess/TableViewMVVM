//
//  QQModel.h
//  TomCoreText
//
//  Created by  tomxiang on 15/7/13.
//  Copyright © 2015年  tomxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QQModel : NSObject

- (instancetype)initWithQQModel:(NSString *)title;

@property(copy,nonatomic) NSString *title;

@end
