//
//  NSMutableAttributedString+SKAdditions.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "String+SKAdditions.h"

@implementation SK_MSTRING (SKAdditions)
- (NSArray *)sky_makeConstraints:(void(^)(SKStringAttributeMaker *make))block {
    SKStringAttributeMaker *constraintMaker = [[SKStringAttributeMaker alloc] initWithString:self];
    block(constraintMaker);
    return [constraintMaker install];
}
@end
