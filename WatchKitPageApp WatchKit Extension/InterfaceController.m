//
//  InterfaceController.m
//  WatchKitPageApp WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/06.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

// 遷移元 --> 遷移先への ボタンアクション
- (IBAction)presentPages {
    
    // 配列 遷移先のIdentifier:pageControllerの記述が必要　遷移先と判断
    NSArray *controllerNames = @[@"pageController",
                                 @"pageController",
                                 @"pageController",
                                 @"pageController",
                                 @"pageController"];
    
    // 配列 contexts:１Page
    NSArray *contexts = @[@"１",
                          @"２",
                          @"３",
                          @"４",
                          @"５"];
    
    // 遷移先引数:contexts Page番号
    [self presentControllerWithNames:controllerNames contexts:contexts];
}

@end



