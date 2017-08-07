//
//  SKStringAttribute.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringAttribute.h"




@implementation SKStringAttribute
#pragma mark - Chaining


#pragma mark - constant proxies
- (NSMutableDictionary *)attributeParameter {
    if (!_attributeParameter) {
        _attributeParameter = [NSMutableDictionary dictionaryWithCapacity:0];
    }
    return _attributeParameter;
}
- (SKStringAttribute * (^)(UIColor *attributeForegroundColor))foregroundColor {
    return ^id(UIColor *color){
        self.foregroundColor = color;
        return self;
    };
}
- (SKStringAttribute *(^)(UIFont *font))textFont {
    return ^id(UIFont *attributeFont){
        self.textFont = attributeFont;
        return self;
    };
}
- (SKStringAttribute *(^)(NSRange range))textRange {
    return ^id(NSRange attributeRange){
        self.textRange = attributeRange;
        return self;
    };
}


#pragma mark - Abstract
- (void)setForegroundColor:(UIColor *)foregroundColor {
    
    SKMethodNotImplemented();}
- (void)setTextFont:(UIFont *)textFont { SKMethodNotImplemented();}
- (void)setTextRange:(NSRange)textRange { SKMethodNotImplemented();}
- (void)setParagraphStyle:(NSMutableParagraphStyle *)paragraphStyle{ SKMethodNotImplemented();}

- (void)install { SKMethodNotImplemented(); }




@end

