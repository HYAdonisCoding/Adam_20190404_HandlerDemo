//
//  HYNewViewController.h
//  Adam_20190404_HandlerDemo
//
//  Created by Adonis_HongYang on 2019/4/4.
//  Copyright © 2019 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "HYBaseViewController.h"

typedef void(^ViewControllerBackBlock)(BOOL isAgree, id _Nullable data);

NS_ASSUME_NONNULL_BEGIN

@interface HYNewViewController : HYBaseViewController

- (instancetype)initWithTitle:(NSString *)title andHandler:(ViewControllerBackBlock)handler;

@end

NS_ASSUME_NONNULL_END
