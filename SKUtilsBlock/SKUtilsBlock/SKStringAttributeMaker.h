//
//  SKStringAttributeMaker.h
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringAttribute.h"
#import "SKStringUtilities.h"
#import "SKStringAddAttribute.h"
#import "SKStringAddStyle.h"

@interface SKStringAttributeMaker : NSObject

@property (nonatomic, strong, readonly) SKStringAddStyle *style;

@property (nonatomic, strong, readonly) SKStringAttribute *attribute;






- (id)initWithString:(SK_MSTRING *)string;



- (NSArray *)install;

@end
