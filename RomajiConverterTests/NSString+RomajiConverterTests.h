//
//  NSString+RomajiConverterTests.h
//  RomajiConverter
//
//  Created by kskb on 2012/12/26.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface NSString_RomajiConverterTests : SenTestCase

- (void)testRomajiToHiragana;
- (void)testHiraganaToHiragana;
- (void)testZenkakuRomajiToHiragana;
- (void)testHankakuHiraganaToHiragana;

@end
