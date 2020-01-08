//
//  NSString+Limit.m
//  Route
//
//  Created by APPLE on 2020/1/7.
//  Copyright © 2020 Sy. All rights reserved.
//

#import "NSString+Limit.h"

#define SYRegExNumber @"^[0-9]*$"
#define SYRegexPhone  @"^[1][3,4,5,6,7,8,9][0-9]{9}$"
#define SYRegexEmail  @"^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(.[a-zA-Z0-9_-]+)+$"
#define SYRegexIdCard @"(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)"
#define SYRegexPrice  @"(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)"

@implementation NSString (Limit)

- (BOOL)validNumber
{
    return [self validWithRegex:SYRegExNumber];
}

- (BOOL)validPhone
{
    return [self validWithRegex:SYRegexPhone];
}

- (BOOL)validEmail
{
    return [self validWithRegex:SYRegexEmail];
}

- (BOOL)validPrice
{
    return YES;
}

- (BOOL)validLengthWithMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength
{
    if (minLength > 0) {
        return self.length >= minLength;
    }
    if (maxLength > 0) {
        return self.length <= maxLength;
    }

    return YES;
}

- (BOOL)validWithRegex:(NSString *)regEx
{
    NSPredicate *regexPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regEx];
    
    return [regexPredicate evaluateWithObject:self];
}

@end
