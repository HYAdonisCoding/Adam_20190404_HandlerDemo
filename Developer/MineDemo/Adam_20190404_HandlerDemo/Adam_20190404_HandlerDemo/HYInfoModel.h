//
//  HYInfoModel.h
//  Adam_20190404_HandlerDemo
//
//  Created by Adonis_HongYang on 2019/4/4.
//  Copyright © 2019 Nikoyo (China）Electronics Systems Co., Ltd. All rights reserved.
//

#import "HYBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface HYInfoModel : HYBaseModel

/** 是否隐藏 */
@property (nonatomic, copy) NSString *isNotShow;

/** <#Description#> */
@property (nonatomic, copy) NSString *typeId;
/** 卡种 */
@property (nonatomic, copy) NSString *typeNo;
/** 卡片名称 */
@property (nonatomic, copy) NSString *typeName;
/** 是否有副卡 */
@property (nonatomic, copy) NSString *fkFlag;
/** 高端中端标识 */
@property (nonatomic, copy) NSString *tallOrLow;
/** 图片url */
@property (nonatomic, copy) NSString *imageUrl;
/** 卡片区域 */
@property (nonatomic, copy) NSString *cardArea;
/** 卡片属性30为智能商务卡 */
@property (nonatomic, copy) NSString *cardAttribute;
/** 卡介质 */
@property (nonatomic, copy) NSString *cardMaterial;
/** 卡组织 */
@property (nonatomic, copy) NSString *cardOrganisation;
/** 是否为套卡 */
@property (nonatomic, copy) NSString *isRelation;
/** 是否支持多卡申请 */
@property (nonatomic, copy) NSString *isMore;
/** 是否支持极客 */
@property (nonatomic, copy) NSString *isO2o;
/** 是否为系列卡 */
@property (nonatomic, copy) NSString *isSeries;
/** 对应父卡卡种 */
@property (nonatomic, copy) NSString *parentTypeNo;
/** 卡片描述 */
@property (nonatomic, copy) NSString *typeDescription;
/** 卡片标语 */
@property (nonatomic, copy) NSString *slogan;
/** 卡片分类 */
@property (nonatomic, copy) NSString *classType;
/** 卡片顺序 */
@property (nonatomic, copy) NSString *cardIndex;
/** 是否为热门卡片 */
@property (nonatomic, copy) NSString *isHot;
/** 是否支持柜台领卡 */
@property (nonatomic, copy) NSString *isGetCardFlag;
/** 是否为指定人卡片 */
@property (nonatomic, copy) NSString *isSpecialCard;

@end

NS_ASSUME_NONNULL_END
