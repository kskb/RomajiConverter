//
//  RomajiConverter.h
//  RomajiConverter
//
//  Created by kskb on 2012/12/25.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RomajiConverter : NSObject

+ (RomajiConverter*) sharedInstance;
- (NSString*) comvert:(NSString*)string;

@end
