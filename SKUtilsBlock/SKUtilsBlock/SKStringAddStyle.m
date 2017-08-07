//
//  SKStringAddStyle.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/6.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringAddStyle.h"

@interface SKStringAddStyle ()

@property (nonatomic, weak) SK_MSTRING *string;

@property (nonatomic, strong) NSMutableParagraphStyle *paragraphStyle;

@property (nonatomic, assign) NSRange attributeRange;
@end

@implementation SKStringAddStyle
- (id)initWithFirstString:(SK_MSTRING *)firstString {
    
    self = [super init];
    if (!self) return nil;
    
    self.string = firstString;
    self.paragraphStyle = NSMutableParagraphStyle.new;
    
    return self;
}

#pragma mark - NSCoping

- (id)copyWithZone:(NSZone __unused *)zone {
    
    return self;
}
- (void)install {
    if (self.attributeRange.length > 0) {
        [self.string addAttribute:NSParagraphStyleAttributeName value:self.paragraphStyle range:self.attributeRange];

    } else {
        [self.string addAttribute:NSParagraphStyleAttributeName value:self.paragraphStyle range:NSMakeRange(0, self.string.length)];
    }
}
#pragma mark - standard Attributes
- (void)setTextlineSpacing:(CGFloat)textlineSpacing {
    self.paragraphStyle.lineSpacing = textlineSpacing;
}
- (void)setTextFirstLineHeadIndent:(CGFloat)textFirstLineHeadIndent {
    self.paragraphStyle.firstLineHeadIndent = textFirstLineHeadIndent;
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    self.paragraphStyle.alignment = textAlignment;
}




@end
