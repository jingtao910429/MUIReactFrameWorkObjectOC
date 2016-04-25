//
//  MUIFrameCommonManager.m
//  RongYu100
//
//  Created by wwt on 16/3/18.
//  Copyright © 2016年 ___RongYu100___. All rights reserved.
//

#import "MUIFrameCommonManager.h"
#import "MUIFrameCommonViewController.h"

@implementation MUIFrameCommonManager

#pragma mark - life cycle

+ (instancetype)manager
{
    static dispatch_once_t onceToken;
    static MUIFrameCommonManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[MUIFrameCommonManager alloc] init];
    });
    return manager;
}

@end
