//
//  main.m
//  Pig Latin
//
//  Created by Tevin Maker on 2016-09-09.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+pigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *x = @"hello world";
        NSString *pig = [x stringByPigLatinization];
        
        NSLog(@"%@", pig);
    }
    return 0;
}
