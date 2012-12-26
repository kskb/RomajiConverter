//
//  NSString+RomajiConverter.m
//  RomajiConverter
//
//  Created by kskb on 2012/12/26.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import "NSString+RomajiConverter.h"

@implementation NSString (RomajiConverter)
- (NSString*) stringRomajiToHiragana
{
    NSMutableString *str = [NSMutableString stringWithString:self];
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformLatinHiragana, NO);
    return (NSString*)str;
}
@end
