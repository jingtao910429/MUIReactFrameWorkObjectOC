//
//  MUIFrameCommonViewController.m
//  RongYu100
//
//  Created by wwt on 16/3/16.
//  Copyright © 2016年 ___RongYu100___. All rights reserved.
//

#import "MUIFrameCommonViewController.h"
#import "NewCustomerCreate.h"
#import "MUIFrameCommonManager.h"
#import "RegisterPartnerViewController.h"

@interface MUIFrameCommonViewController ()

@end

@implementation MUIFrameCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadHtml {
    
    PDRCore*  pCoreHandle = [PDRCore Instance];
    
    if (pCoreHandle != nil) {
        
        if (![self isKindOfClass:[RegisterPartnerViewController class]]) {
            
            [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookies:[Tool getCookies]
                                                               forURL:[NSURL URLWithString:self.httpURL]
                                                      mainDocumentURL:nil];
        }
        
        [[PDRCore Instance] startAsWebClient];
        CGRect StRect = CGRectMake(0, 0, SCREEN_BOUND_WIDTH, SCREEN_BOUND_HEIGHT - 64);
        
        NSString *appFrameName = @"WebDefaultID";
        
        if ([self isKindOfClass:[RegisterPartnerViewController class]]) {
            appFrameName = @"RegisterPartnerViewController_ID";
        }
        
        if (_httpURL) {
            appFrame = [[PDRCoreAppFrame alloc] initWithName:appFrameName loadURL:_httpURL frame:StRect];
        }else {
            appFrame = [[PDRCoreAppFrame alloc] initWithName:appFrameName loadURL:_fileURL frame:StRect];
            
            NSString *pStringDocumentpath = [NSString stringWithFormat:@"%@",[[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@/%@/",ZipPath,@"H5Page"]]];
            
            [pCoreHandle.appManager.activeApp.appInfo setWwwPath:pStringDocumentpath];
        }
        
        [pCoreHandle.appManager.activeApp.appWindow registerFrame:appFrame];
        
        [self.view addSubview:appFrame];
        
        [[MUIFrameCommonManager manager] setCurrentMUIFrameCommonViewController:self];
        
    }
}


@end
