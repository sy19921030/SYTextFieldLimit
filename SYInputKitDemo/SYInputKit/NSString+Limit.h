//
//  NSString+Limit.h
//  Route
//
//  Created by APPLE on 2020/1/7.
//  Copyright © 2020 Sy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Limit)

- (BOOL)validNumber;

- (BOOL)validPhone;

- (BOOL)validEmail;

- (BOOL)validPrice;

- (BOOL)validLengthWithMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength;

- (BOOL)validWithRegex:(NSString *)regEx;

@end

NS_ASSUME_NONNULL_END
