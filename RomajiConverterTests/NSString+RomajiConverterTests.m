//
//  NSString+RomajiConverterTests.m
//  RomajiConverter
//
//  Created by kskb on 2012/12/26.
//  Copyright (c) 2012年 karakurimono.com All rights reserved.
//

#import "NSString+RomajiConverterTests.h"
#import "NSString+RomajiConverter.h"

@implementation NSString_RomajiConverterTests

# pragma mark - private assert

- (void) fk_assert:(NSString*)result
{
    STAssertTrue([result isEqualToString:@"ふくおかけん"],
                 @"result: %@ is not 「ふくおかけん」", result);
}

# pragma mark -

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}


#pragma mark - ローマ字 -> ひらがな変換テスト

- (void)testRomajiToHiragana
{
    NSString *tmp_oomoji = @"FUKUOKAKEN";
    NSString *result = [tmp_oomoji stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ふくおかけん"],
                 @"result: %@ is not 「ふくおかけん」", result);
    //[self fk_assert:[tmp_oomoji stringRomajiToHiragana]];
}

- (void)testHiraganaToHiragana
{
    NSString *tmp_hiragana = @"ふくおかけん";
    NSString *result = [tmp_hiragana stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ふくおかけん"],
                 @"result: %@ is not 「ふくおかけん」", result);
    //[self fk_assert:[tmp_hiragana stringRomajiToHiragana]];
}

// 全角ローマ字に対して何もしない
- (void)testZenkakuRomajiToHiragana
{
    NSString *tmp_zenkaku = @"ＦＵＫＵＯＫＡＫＥＮ";
    NSString *result = [tmp_zenkaku stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ＦＵＫＵＯＫＡＫＥＮ"],
                 @"result: %@ is not 「ＦＵＫＵＯＫＡＫＥＮ」", result);
    //[self fk_assert:[tmp_zenkaku stringRomajiToHiragana]];
    
}

// 半角カナに対して何もしない
- (void)testHankakukanaToHiragana
{
    NSString *tmp_hankakukana = @"ﾌｸｵｶｹﾝ";
    NSString *result = [tmp_hankakukana stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ﾌｸｵｶｹﾝ"],
                 @"result: %@ is not 「ﾌｸｵｶｹﾝ」", result);
    //[self fk_assert:[tmp_hankakukana stringRomajiToHiragana]];
}

# pragma mark - ひらがな -> ローマ字変換テスト
- (void)testHiraganaToRomaji
{
    NSString *tmp_hiragana = @"なかまし";
    NSString *result = [tmp_hiragana stringHiraganaToRomaji];
    STAssertTrue([result isEqualToString:@"nakamashi"],
                 @"result: %@ is not 「nakamashi」", result);
}

- (void)testRomajiToRomaji
{
    NSString *tmp_romaji = @"nakamashi";
    NSString *result = [tmp_romaji stringHiraganaToRomaji];
    STAssertTrue([result isEqualToString:@"nakamashi"],
                 @"result: %@ is not 「nakamashi」", result);
}

- (void)testZENKAKuRomajiToRomaji
{
    
}

- (void)testHankakukanaToRomaji
{
    
}


@end
