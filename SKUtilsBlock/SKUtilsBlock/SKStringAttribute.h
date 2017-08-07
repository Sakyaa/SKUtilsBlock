//
//  SKStringAttribute.h
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKStringUtilities.h"

@interface SKStringAttribute : NSObject


/**
 配置参数
 */
@property (nonatomic, strong) NSMutableDictionary *attributeParameter;

/**
 字体颜色
 */
- (SKStringAttribute * (^)(UIColor *attributeForegroundColor))foregroundColor;

/**
 字体的大小
 */
- (SKStringAttribute * (^)(UIFont *font))textFont;

/**
 需要设置的文字范围
 */
- (SKStringAttribute * (^)(NSRange range))textRange;





- (void)install;
- (void)setForegroundColor:(UIColor *)foregroundColor;
- (void)setTextFont:(UIFont *)textFont;
- (void)setTextRange:(NSRange)textRange;
- (void)setParagraphStyle:(NSMutableParagraphStyle *)paragraphStyle;
@end
