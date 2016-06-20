//
//  QYmode.m
//  05-单例
//
//  Created by qingyun on 16/6/12.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "QYmode.h"

@implementation QYmode
+(instancetype)shareHandle{
    static QYmode *mode;
//    if (!mode) {
//        mode=[QYmode new];
//    }
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        //该函数只会执行一次
        NSLog(@"=======1次");
        mode=[QYmode new];
    });
    return mode;
}


@end
