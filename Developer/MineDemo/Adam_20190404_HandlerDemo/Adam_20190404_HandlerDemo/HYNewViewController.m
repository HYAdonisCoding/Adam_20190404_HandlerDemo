//
//  HYNewViewController.m
//  Adam_20190404_HandlerDemo
//
//  Created by Adonis_HongYang on 2019/4/4.
//  Copyright © 2019 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "HYNewViewController.h"

@interface HYNewViewController ()
/** block */
@property (nonatomic, copy) ViewControllerBackBlock block;

/** 是佛打开 */
@property (nonatomic, assign) BOOL isAgree;

@end

@implementation HYNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.title) {
        self.navigationItem.title = self.title;
    }
    self.isAgree = YES;
    
    UISwitch *switchMe = [[UISwitch alloc] initWithFrame:CGRectMake(100, 200, 80, 35)];
    switchMe.on = self.isAgree;
    [switchMe addTarget:self action:@selector(valueChangedAction:) forControlEvents:(UIControlEventValueChanged)];
    [self.view addSubview:switchMe];
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setTitle:@"Back" forState:(UIControlStateNormal)];
    button.frame = CGRectMake(10, self.view.bounds.size.height - 100, self.view.bounds.size.width - 20, 60);
    [button addTarget:self action:@selector(goBackAction:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
}

- (void)dismissAction {
    [self dismissViewControllerAnimated:YES completion:^{
        
        
    }];
}

- (void)dealloc {
    self.block(self.isAgree, nil);
}

- (instancetype)initWithTitle:(NSString *)title andHandler:(ViewControllerBackBlock)handler {
    self = [super init];
    if (self) {
        self.title = title;
        self.block = handler;
        self.view.backgroundColor = [UIColor purpleColor];
    }
    return self;
}
- (void)valueChangedAction:(UISwitch *)sender {
    self.isAgree = sender.on;
}
- (void)goBackAction:(UIButton *)sender {
    [self dismissAction];
}

@end
