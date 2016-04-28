//
//  MUIFrameCommonJSReactiveMehod.m
//  RongYu100
//
//  Created by wwt on 16/3/17.
//  Copyright © 2016年 ___RongYu100___. All rights reserved.
//

#import "MUIFrameCommonJSReactiveMehod.h"
#import "MUIFrameCommonManager.h"
#import "MUIFrameCommonViewController.h"

@implementation MUIFrameCommonJSReactiveMehod

//js交互方法
//mui框架
- (void)muiProductWebViewControllerClickPopAndDealDoNext {

    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // Do time-consuming task in background thread
        // Return back to main thread to update UI
        dispatch_sync(dispatch_get_main_queue(), ^{
            
            
        });
    });

}

- (void)muiRegisterPartnerViewControllerPopToRootVC {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // Do time-consuming task in background thread
        // Return back to main thread to update UI
        dispatch_sync(dispatch_get_main_queue(), ^{
            
            MUIFrameCommonViewController *pushVC = (MUIFrameCommonViewController *)[[MUIFrameCommonManager manager] currentMUIFrameCommonViewController];
            
            //加载UIWindow上
            /*
             UIWindow *mainWindow = [[UIApplication sharedApplication] keyWindow];
             MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:mainWindow animated:YES];
             */
            
            float delayInSeconds = 1.5;
            
            dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
            
            dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
                
            });
            
        });
    });
}

- (NSString *)muiReactiveSendPersonInfo {
    
    @try {
        
        
        return nil;
        
    }
    @catch (NSException *exception) {
        
    }
    @finally {
        
    }
}

@end
