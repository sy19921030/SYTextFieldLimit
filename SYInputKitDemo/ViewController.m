//
//  ViewController.m
//  SYInputKitDemo
//
//  Created by APPLE on 2020/1/7.
//  Copyright © 2020 Sy. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+Add.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 200, 30)];
    field.placeholder = @"placeholder";
    field.limitType = SYTextFieldLimitTypeNumber;
    [self.view addSubview:field];
}


@end
