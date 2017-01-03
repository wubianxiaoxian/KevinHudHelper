//
//  NSString+Commonnew.m
//  KevinHudHelper
//
//  Created by 孙凯峰 on 2016/12/23.
//  Copyright © 2016年 孙凯峰. All rights reserved.
//

#import "NSString+Commonnew.h"

@implementation NSString (Commonnew)
#pragma mark - Utils
+ (BOOL)isEmpty:(NSString *)string
{
    return string == nil || string.length == 0;
}
@end
