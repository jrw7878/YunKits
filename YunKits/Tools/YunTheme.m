//
// Created by yun on 16/11/30.
// Copyright (c) 2016 成都晟堃科技有限责任公司. All rights reserved.
//

#import "YunTheme.h"
#import "YunSizeHelper.h"

@implementation YunTheme {
}

+ (instancetype)instance {
    static YunTheme *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _baseFontSize = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline].pointSize;

        CGFloat delta = [YunSizeHelper screenWith] - 414.0f;
        CGFloat delta1 = delta / 414.0f * 0.5f;
        _screenScale = 1.2f * (1.0f + delta1); // 当前屏幕相对于6p屏幕的比列大小
    }

    return self;
}

- (void)reloadDefSize {
    _baseFontSize = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline].pointSize;
}

- (UIFont *)fontWithSize:(CGFloat)size {
    return [UIFont systemFontOfSize:size];
}

- (UIFont *)screenFontWithSize:(CGFloat)size {
    return [UIFont systemFontOfSize:size * _screenScale];
}

- (UIFont *)baseFontWithSizeOffset:(CGFloat)sizeOffset {
    return [UIFont systemFontOfSize:_baseFontSize + sizeOffset];
}

- (UIFont *)baseFontWithSizeMultipliedBy:(CGFloat)sizeMlt {
    return [UIFont systemFontOfSize:_baseFontSize * sizeMlt];
}

- (UIFont *)baseScreenFontWithSizeOffset:(CGFloat)sizeOffset {
    return [UIFont systemFontOfSize:(_baseFontSize + sizeOffset) * _screenScale];
}

- (UIFont *)baseScreenFontWithSizeMultipliedBy:(CGFloat)sizeMlt {
    return [UIFont systemFontOfSize:_baseFontSize * sizeMlt * _screenScale];
}

- (UIFont *)fontWithName:(NSString *)name size:(CGFloat)size {
    return [UIFont fontWithName:name size:size];
}

- (UIFont *)screenFontName:(NSString *)name size:(CGFloat)size {
    return [UIFont fontWithName:name size:size * _screenScale];
}

- (UIFont *)baseFontWithName:(NSString *)name sizeOffset:(CGFloat)sizeOffset {
    return [UIFont fontWithName:name size:_baseFontSize + sizeOffset];
}

- (UIFont *)baseFontWithName:(NSString *)name sizeMultipliedBy:(CGFloat)sizeMlt {
    return [UIFont fontWithName:name size:_baseFontSize * sizeMlt];
}

- (UIFont *)baseScreenFontWithName:(NSString *)name sizeOffset:(CGFloat)sizeOffset {
    return [UIFont fontWithName:name size:(_baseFontSize + sizeOffset) * _screenScale];
}

- (UIFont *)baseScreenFontWithName:(NSString *)name sizeMultipliedBy:(CGFloat)sizeMlt {
    return [UIFont fontWithName:name size:_baseFontSize * sizeMlt * _screenScale];
}

- (CGFloat)screenSize:(CGFloat)size {
    return size * _screenScale;
}

@end