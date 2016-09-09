//
//  NSString+pigLatinization.m
//  Pig Latin
//
//  Created by Tevin Maker on 2016-09-09.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "NSString+pigLatinization.h"

@implementation NSString (NSString_pigLatinization)

-(NSString *)stringByPigLatinization{
    NSString *pigLatinString;
    NSString *pigEnding = @"ay";
    NSString *stringConstenant;
    NSMutableString *stringEnding;
    NSMutableArray *pigLatinArray = [[NSMutableArray alloc] init];
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    NSArray *normStringArray = [self componentsSeparatedByString:@" "];
    
    for (NSMutableString *string in normStringArray) {
        NSArray *charArray = [string componentsSeparatedByCharactersInSet:vowels];
        stringConstenant = [charArray objectAtIndex:0];
        stringEnding = [string mutableCopy];
        [stringEnding deleteCharactersInRange:[ string rangeOfString:stringConstenant]];
        
        [stringEnding appendString:stringConstenant];
        [stringEnding appendString:pigEnding];
        
        pigLatinString = stringEnding;
        [pigLatinArray addObject:pigLatinString];
    }
    
    NSMutableString *mutablePig = [[NSMutableString alloc] init];
    
    for (NSString *string in pigLatinArray) {
        [mutablePig appendString:string];
        [mutablePig appendString:@" "];
    }
    
    pigLatinString = [NSString stringWithString:mutablePig];
    
    
    
    return pigLatinString;
}

@end
