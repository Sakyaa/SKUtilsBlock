//
//  SKStringAddAttribute.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/6.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringAddAttribute.h"

@interface  SKStringAddAttribute()

@property (nonatomic, weak) SK_MSTRING *string;

@property (nonatomic, assign) NSRange attributeRange;

@end

@implementation SKStringAddAttribute


- (id)initWithFirstString:(SK_MSTRING *)firstString {
    self = [super init];
    if (!self) return nil;
    
    self.string = firstString;
    
    
    return self;
}
#pragma mark - NSCoping

- (id)copyWithZone:(NSZone __unused *)zone {
 
    
    return self;
}
- (void)install {

    
    if (self.attributeRange.length > 0) {
        [self.string addAttributes:self.attributeParameter range:self.attributeRange];

    } else {
        [self.string addAttributes:self.attributeParameter range:NSMakeRange(0, self.string.length)];
    }
    
}

#pragma mark - standard Attributes
- (void)setTextFont:(UIFont *)textFont {
    [self.attributeParameter setObject:textFont forKey:NSFontAttributeName];
}
- (void)setForegroundColor:(UIColor *)foregroundColor {
    [self.attributeParameter setObject:foregroundColor forKey:NSForegroundColorAttributeName];
}
- (void)setTextRange:(NSRange)textRange {
    self.attributeRange = textRange;
}


@end
