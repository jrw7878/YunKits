//
// Created by yun on 16/12/1.
// Copyright (c) 2016 成都晟堃科技有限责任公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YunBaseView : UIView

// 控件间距控制
@property (nonatomic, assign) CGFloat topOff;
@property (nonatomic, assign) CGFloat leftOff;
@property (nonatomic, assign) CGFloat rightOff;
@property (nonatomic, assign) CGFloat bottomOff;
@property (nonatomic, assign) CGFloat ctnIntervalV;
@property (nonatomic, assign) CGFloat ctnIntervalH;

+ (instancetype)viewWithAllOff:(CGFloat)off andInterval:(CGFloat)interval;

- (instancetype)initWithAllOff:(CGFloat)off andInterval:(CGFloat)interval;

- (void)setOffTop:(CGFloat)top left:(CGFloat)left right:(CGFloat)right bottom:(CGFloat)bottom;

- (void)setIntervalV:(CGFloat)iV h:(CGFloat)iH;

@end