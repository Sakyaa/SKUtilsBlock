//
//  SKStringStyle.h
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/6.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKStringUtilities.h"
/**
 1 @property(readwrite) CGFloat lineSpacing;　　　　　　　　　　　　　　//行间距
 2 @property(readwrite) CGFloat paragraphSpacing;　　　　　　　　　　　//段间距
 3 @property(readwrite) NSTextAlignment alignment;　　　　　　　　　　 //对齐方式
 4 @property(readwrite) CGFloat firstLineHeadIndent;　　　　　　　　　 //首行缩紧
 5 @property(readwrite) CGFloat headIndent;　　　　　　　　　　　　　　 //除首行之外其他行缩进
 6 @property(readwrite) CGFloat tailIndent;　　　　　　　　　　　　　　 //每行容纳字符的宽度
 7 @property(readwrite) NSLineBreakMode lineBreakMode;　　　　　　　  //换行方式
 8 @property(readwrite) CGFloat minimumLineHeight;　　　　　　　　　　 //最小行高
 9 @property(readwrite) CGFloat maximumLineHeight;　　　　　　　　　　 //最大行高
 */

@interface SKStringStyle : NSObject

- (SKStringStyle * (^)(CGFloat lineSpacing))textlineSpacing;
- (SKStringStyle * (^)(NSTextAlignment alignment))textAlignment;
- (SKStringStyle * (^)(CGFloat firstLineHeadIndent))textFirstLineHeadIndent;




- (void)install;
- (void)setTextlineSpacing:(CGFloat)textlineSpacing;
- (void)setTextAlignment:(NSTextAlignment)textAlignment;
- (void)setTextFirstLineHeadIndent:(CGFloat)textFirstLineHeadIndent;

@end
