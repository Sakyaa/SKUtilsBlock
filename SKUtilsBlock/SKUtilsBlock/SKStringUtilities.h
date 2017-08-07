//
//  SKStringUtilities.h
//  SKUtilsBlock
//
//  Created by Sakya on 2017/8/7.
//  Copyright © 2017年 Sakya. All rights reserved.
//

#import <Foundation/Foundation.h>




#if TARGET_OS_IPHONE || TARGET_OS_TV
#import <UIKit/UIKit.h>
#define SK_MSTRING NSMutableAttributedString
#define SK_VIEW_CONTROLLER UIViewController
#elif TARGET_OS_MAC
#import <AppKit/AppKit.h>
#endif


#define SKMethodNotImplemented() \
@throw [NSException exceptionWithName:NSInternalInconsistencyException \
reason:[NSString stringWithFormat:@"You must override %@ in a subclass.", NSStringFromSelector(_cmd)] \
userInfo:nil]
