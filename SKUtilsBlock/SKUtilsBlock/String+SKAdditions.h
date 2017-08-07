//
//  NSMutableAttributedString+SKAdditions.h
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/5.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import "SKStringUtilities.h"
#import "SKStringAttributeMaker.h"

@interface SK_MSTRING (SKAdditions)

- (NSArray *)sky_makeConstraints:(void(^)(SKStringAttributeMaker *make))block;


@end
