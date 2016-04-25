//
//  MUIFrameCommonViewController.h
//  RongYu100
//
//  Created by wwt on 16/3/16.
//  Copyright © 2016年 ___RongYu100___. All rights reserved.
//

#import "RYBaseViewController.h"

//MUI框架头文件
#import "PDRToolSystem.h"
#import "PDRToolSystemEx.h"
#import "PDRCoreAppFrame.h"
#import "PDRCoreAppManager.h"
#import "PDRCoreAppWindow.h"
#import "PDRCoreAppInfo.h"

@interface MUIFrameCommonViewController : RYBaseViewController {
    PDRCoreAppFrame* appFrame;
}

@property (nonatomic, copy) NSString *fileURL;
@property (nonatomic, copy) NSString *httpURL;

- (void)loadHtml;

@end