//
//  SKStringAttributeMaker.m
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringAttributeMaker.h"

@interface SKStringAttributeMaker ()

@property (nonatomic, weak) SK_MSTRING *string;
@property (nonatomic, strong) NSMutableArray *constraints;

@end

@implementation SKStringAttributeMaker
- (id)initWithString:(SK_MSTRING *)string {
    self = [super init];
    if (!self) return nil;
    
    self.string = string;
    self.constraints = NSMutableArray.new;
    return self;
}
- (NSArray *)install {
   
    
    NSArray *constraints = self.constraints.copy;
    for (id constraint in constraints) {
        if ([constraint isKindOfClass:[SKStringAddStyle class]]) {
            [(SKStringAddStyle *)constraint install];
        }
        if ([constraint isKindOfClass:[SKStringAttribute class]]) {
            [(SKStringAttribute *)constraint install];
        }

    }
    [self.constraints removeAllObjects];
    return constraints;
}

#pragma mark - standard Attributes
- (SKStringAttribute *)attribute {
    
    SKStringAddAttribute *attributeString = [[SKStringAddAttribute alloc] initWithFirstString:self.string];
    [self.constraints addObject:attributeString];
    return attributeString;
}
- (SKStringAddStyle *)style {
    SKStringAddStyle *styleString = [[SKStringAddStyle alloc] initWithFirstString:self.string];
    [self.constraints addObject:styleString];
    return styleString;
}

@end
