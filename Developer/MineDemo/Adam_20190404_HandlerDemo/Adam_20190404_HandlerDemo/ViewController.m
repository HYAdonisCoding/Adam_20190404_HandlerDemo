//
//  ViewController.m
//  Adam_20190404_HandlerDemo
//
//  Created by Adonis_HongYang on 2019/4/4.
//  Copyright © 2019 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "HYInfoModel.h"
#import "HYNewViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HYInfoModel *model = [[HYInfoModel alloc] init];
    model.typeId = @"007";
//    NSLog(@"%s--\n%@\n%@", __func__, model.debugDescription, model.description);
    
    self.view.backgroundColor = [UIColor magentaColor];
    self.navigationItem.title = @"Home";
}

- (IBAction)pushAction:(id)sender {
    HYNewViewController *vc = [[HYNewViewController alloc] initWithTitle:@"Detailed" andHandler:^(BOOL isAgree, id  _Nullable data) {
        [self alertWith:isAgree];
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)presentAaction:(id)sender {
    HYNewViewController *vc = [[HYNewViewController alloc] initWithTitle:@"Detailed" andHandler:^(BOOL isAgree, id  _Nullable data) {
        [self alertWith:isAgree];
    }];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)alertWith:(BOOL)agree {
    NSString *message = [NSString stringWithFormat:@"Chooseed %@", agree?@"Open":@"Close"];
    UIAlertController *vc = [UIAlertController alertControllerWithTitle:@"User" message:message preferredStyle:(UIAlertControllerStyleAlert)];
    [vc addAction:[UIAlertAction actionWithTitle:@"Good" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

@end
