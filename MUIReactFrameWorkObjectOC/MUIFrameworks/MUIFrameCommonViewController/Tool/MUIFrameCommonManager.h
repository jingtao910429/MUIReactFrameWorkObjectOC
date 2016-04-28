//
//  MUIFrameCommonManager.h
//  RongYu100
//
//  Created by wwt on 16/3/18.
//  Copyright © 2016年 ___RongYu100___. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MUIFrameCommonViewController;

@interface MUIFrameCommonManager : NSObject

@property (nonatomic, strong) MUIFrameCommonViewController *currentMUIFrameCommonViewController;

+ (instancetype)manager;

@end
