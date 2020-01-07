//
//  UITextField+Add.m
//  Route
//
//  Created by APPLE on 2020/1/7.
//  Copyright © 2020 Sy. All rights reserved.
//

#import "UITextField+Add.h"
#import "NSString+Limit.h"

static NSString *limitTypeKey = @"limitTypeKey";
static NSString *historyTextKey = @"historyTextKey";
static NSString *minLengthKey = @"minLengthKey";
static NSString *maxLengthKey = @"maxLengthKey";

@implementation UITextField (Add)

- (void)setLimitType:(NSInteger)limitType
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFiledChangedWithNotification:) name:UITextFieldTextDidChangeNotification object:self];
    
    objc_setAssociatedObject(self, &limitTypeKey, @(limitType), OBJC_ASSOCIATION_ASSIGN);
}

- (NSInteger)limitType
{
    return [objc_getAssociatedObject(self, &limitTypeKey) integerValue];
}

- (void)setHistoryText:(NSString *)historyText
{
    objc_setAssociatedObject(self, &historyTextKey, historyText, OBJC_ASSOCIATION_COPY);
}

- (NSString *)historyText
{
    return objc_getAssociatedObject(self, &historyTextKey);
}

- (void)setMinLength:(NSInteger)minLength
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFiledChangedWithNotification:) name:UITextFieldTextDidChangeNotification object:self];
    
    objc_setAssociatedObject(self, &minLengthKey, @(minLength), OBJC_ASSOCIATION_COPY);
}

- (NSInteger)minLength
{
    return [objc_getAssociatedObject(self, &minLengthKey) integerValue];
}

- (void)setMaxLength:(NSInteger)maxLength
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFiledChangedWithNotification:) name:UITextFieldTextDidChangeNotification object:self];
    
    objc_setAssociatedObject(self, &maxLengthKey, @(maxLength), OBJC_ASSOCIATION_COPY);
}

- (NSInteger)maxLength
{
    return [objc_getAssociatedObject(self, &maxLengthKey) integerValue];
}

- (void)textFiledChangedWithNotification:(NSNotification *)notification
{
    UITextField *textField = notification.object;
    NSString *currentText = textField.text;
    
    BOOL isMatch = false;
    
    switch (self.limitType) {
        case SYTextFieldLimitTypeNumber:
            isMatch = [currentText validNumber];
            break;
        case SYTextFieldLimitTypePhone:
            isMatch = [currentText validNumber];
            break;
        case SYTextFieldLimitTypeEmail:
            isMatch = [currentText validNumber];
            break;
        default:
            break;
    }
    if (isMatch) {
        self.historyText = currentText;
    } else {
        textField.text = self.historyText;
    }    
}

@end
