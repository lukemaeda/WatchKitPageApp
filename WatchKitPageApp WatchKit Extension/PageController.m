//
//  PageController.m
//  WatchKitPageApp
//
//  Created by MAEDAHAJIME on 2015/04/06.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "PageController.h"


@interface PageController()

// Pege番号ラベル
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *pageLabel;

@end


@implementation PageController

// 最初に呼び出されるメソッド
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // 引数:contextページ番号
    [self.pageLabel setText:[NSString stringWithFormat:@"%@ Page", context]];
    
    // Configure interface objects here.
}

// ユーザーにUIが表示されたタイミングで呼び出されるメソッド
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

// UIが非表示になったタイミングで呼び出されるメソッド
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



