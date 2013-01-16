//
//  NSString+RomajiConverterTests.h
//  RomajiConverter
//
//  Created by kskb on 2012/12/26.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@interface NSString_RomajiConverterTests : SenTestCase

// ひらがなコンバート系
- (void)testRomajiToHiragana;
- (void)testHiraganaToHiragana;
- (void)testZenkakuRomajiToHiragana;
- (void)testHankakukanaToHiragana;
// ローマ字コンバート系
- (void)testHiraganaToRomaji;
- (void)testRomajiToRomaji;
- (void)testZENKAKuRomajiToRomaji;
- (void)testHankakukanaToRomaji;

@end
