//
//  ZRiPhoneOriPad.h
//  iPhoneOriPad--Demo
//
//  Created by Victor Zhang on 16/2/19.
//  Copyright © 2016年 xiaoruigege. All rights reserved.
//  判断是iPhone还是iPad 且可以判断具体是哪款Apple产品

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 * the numeration list is for these apple's device name
 */
typedef enum {
    AppleDeviceUnknownSets = -1,
    AppleDeviceiPhoneUnderneath4Series = 0,
    AppleDeviceiPhone4Series = 1,
    AppleDeviceiPhone5Series = 2,
    AppleDeviceiPhone6Series = 3,
    AppleDeviceiPhone6PlusSeries = 4,
    AppleDeviceiPadAirSeries = 5,
    AppleDeviceiPadProSeries = 6,
    AppleDeviceiPodSeries = 7,
    AppleDeviceiPhoneSimulator = 8
}ZRAppleDeviceName;

@interface ZRAppleInfos : NSObject

/**
 * whether iPhone or iPad
 * return YES is iPhone
 * return No is iPad
 */
+ (BOOL)isiPhoneOriPad;

/**
 * Our device nickname
 */
+ (NSString *)phoneName;

/**
 * Our device's system version
 */
+ (CGFloat)phoneVersion;

/**
 * return device's type
 */
+ (ZRAppleDeviceName)deviceType;

@end
