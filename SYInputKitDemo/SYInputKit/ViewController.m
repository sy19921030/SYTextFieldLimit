//
//  ViewController.m
//  Route
//
//  Created by APPLE on 2019/12/24.
//  Copyright © 2019 Sy. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Add.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 200, 30)];
    field.placeholder = @"placeholder";
    field.delegate = self;
    field.limitType = SYTextFieldLimitTypeNumber;
    [self.view addSubview:field];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return YES;
}


@end
