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

- (void)testZenkakuRomajiToHiragana
{
    NSString *tmp_zenkaku = @"ＦＵＫＵＯＫＡ";
    NSString *result = [tmp_zenkaku stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ふくおかけん"],
                 @"result: %@ is not 「ふくおかけん」", result);
    //[self fk_assert:[tmp_zenkaku stringRomajiToHiragana]];
    
}

- (void)testHankakuHiraganaToHiragana
{
    NSString *tmp_hankakukana = @"ﾌｸｵｶｹﾝ";
    NSString *result = [tmp_hankakukana stringRomajiToHiragana];
    STAssertTrue([result isEqualToString:@"ふくおかけん"],
                 @"result: %@ is not 「ふくおかけん」", result);
    //[self fk_assert:[tmp_hankakukana stringRomajiToHiragana]];
}

@end
