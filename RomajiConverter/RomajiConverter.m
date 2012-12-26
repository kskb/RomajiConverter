//
//  RomajiConverter.m
//  RomajiConverter
//
//  Created by kskb on 2012/12/25.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import "RomajiConverter.h"

@implementation RomajiConverter

static id _sharedInstance;

+ (RomajiConverter*) sharedInstance
{
    if (_sharedInstance == nil) {
        _sharedInstance = [[self alloc] init];
    }
    return _sharedInstance;
}

- (NSString*) comvert:(NSString*)string
{
    return  nil;
}


@end
