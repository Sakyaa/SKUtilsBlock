//
//  SKStringStyle.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/6.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringStyle.h"

@implementation SKStringStyle

- (SKStringStyle * (^)(CGFloat lineSpacing))textlineSpacing {
    return ^id(CGFloat attributeLineSpacing){
        self.textlineSpacing = attributeLineSpacing;
        return self;
    };
}
- (SKStringStyle * (^)(NSTextAlignment alignment))textAlignment {
    return ^id(NSTextAlignment attributeAlignment){
        self.textAlignment = attributeAlignment;
        return self;
    };
}
- (SKStringStyle * (^)(CGFloat firstLineHeadIndent))textFirstLineHeadIndent {
    return ^id(CGFloat attributeFirstLineHeadIndent){
        self.textFirstLineHeadIndent = attributeFirstLineHeadIndent;
        return self;
    };
}

#pragma mark - Abstract

- (void)setTextlineSpacing:(CGFloat)textlineSpacing {
    SKMethodNotImplemented();}
- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    SKMethodNotImplemented();}
- (void)setTextFirstLineHeadIndent:(CGFloat)textFirstLineHeadIndent {
    SKMethodNotImplemented();}

- (void)install { SKMethodNotImplemented(); }

@end
