//
//  UITextField+Add.h
//  Route
//
//  Created by APPLE on 2020/1/7.
//  Copyright © 2020 Sy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, SYTextFieldLimitType){
    SYTextFieldLimitTypeNumber,
    SYTextFieldLimitTypePrice,
    SYTextFieldLimitTypePhone,
    SYTextFieldLimitTypeEmail,
    SYTextFieldLimitTypeIDCard,
    SYTextFieldLimitTypeCustom,
};

@interface UITextField (Add)

@property (nonatomic, assign) NSInteger limitType;
@property (nonatomic, copy)   NSString *historyText;
@property (nonatomic, assign) NSInteger minLength;
@property (nonatomic, assign) NSInteger maxLength;

@end

NS_ASSUME_NONNULL_END
