//
//  ZRiPhoneOriPad.m
//  iPhoneOriPad--Demo
//
//  Created by Victor Zhang on 16/2/19.
//  Copyright © 2016年 xiaoruigege. All rights reserved.
//

#import "ZRAppleInfos.h"
#include <sys/utsname.h>

@implementation ZRAppleInfos

/**
 * whether iPhone or iPad
 * return YES is iPhone
 * return No is iPad
 */
+ (BOOL)isiPhoneOriPad
{
    NSString *str = [UIDevice currentDevice].model;
    if ([str isEqualToString:@"iPhone"]) {
        return YES;
    } else {
        return NO;
    }
}

/**
 * Our device nickname
 */
+ (NSString *)phoneName
{
    return [[UIDevice currentDevice] name];
}

/**
 * Our device's system version
 */
+ (CGFloat)phoneVersion
{
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

/**
 * return device's type
 */
+ (ZRAppleDeviceName)deviceType
{
    // 需要#import "sys/utsname.h"
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    //iPhone's device is deprecated
    if ([deviceString isEqualToString:@"iPhone1,1"]     // @"iPhone 1G";
     || [deviceString isEqualToString:@"iPhone1,2"]     // @"iPhone 3G";
     || [deviceString isEqualToString:@"iPhone2,1"])    // @"iPhone 3GS";
        return AppleDeviceiPhoneUnderneath4Series;
    
    //iPhone4 Series
    if ([deviceString isEqualToString:@"iPhone3,1"]     // @"iPhone 4";
     || [deviceString isEqualToString:@"iPhone3,2"]     // @"Verizon iPhone 4";
     || [deviceString isEqualToString:@"iPhone4,1"])    // @"iPhone 4S";
        return AppleDeviceiPhone4Series;
    
    //iPhone5 Series
    if ([deviceString isEqualToString:@"iPhone5,1"]     // @"iPhone 5";
     || [deviceString isEqualToString:@"iPhone5,2"]     // @"iPhone 5";
     || [deviceString isEqualToString:@"iPhone5,3"]     // @"iPhone 5C";
     || [deviceString isEqualToString:@"iPhone5,4"]     // @"iPhone 5C";
     || [deviceString isEqualToString:@"iPhone6,1"]     // @"iPhone 5S";
     || [deviceString isEqualToString:@"iPhone6,2"])    // @"iPhone 5S";
        return AppleDeviceiPhone5Series;
    
    //iPhone6 Series
    if ([deviceString isEqualToString:@"iPhone7,2"]     // @"iPhone 6";
     || [deviceString isEqualToString:@"iPhone8,1"])    // @"iPhone 6s";
        return AppleDeviceiPhone6Series;
        
    //iPhone6 plus Series
    if ([deviceString isEqualToString:@"iPhone7,1"]     // @"iPhone 6 Plus";
     || [deviceString isEqualToString:@"iPhone8,2"])    // @"iPhone 6s Plus";
        return AppleDeviceiPhone6PlusSeries;
        
    //iPod
    if ([deviceString isEqualToString:@"iPod1,1"]       // @"iPod Touch 1G";
     || [deviceString isEqualToString:@"iPod2,1"]       // @"iPod Touch 2G";
     || [deviceString isEqualToString:@"iPod3,1"]       // @"iPod Touch 3G";
     || [deviceString isEqualToString:@"iPod4,1"]       // @"iPod Touch 4G";
     || [deviceString isEqualToString:@"iPod5,1"])      // @"iPod Touch 5G";
        return AppleDeviceiPodSeries;
    
    //iPad
    if ([deviceString isEqualToString:@"iPad1,1"]       // @"iPad";
     || [deviceString isEqualToString:@"iPad2,1"]       // @"iPad 2 (WiFi)";
     || [deviceString isEqualToString:@"iPad2,2"]       // @"iPad 2 (GSM)";
     || [deviceString isEqualToString:@"iPad2,3"]       // @"iPad 2 (CDMA)";
     || [deviceString isEqualToString:@"iPad2,4"]       // @"iPad 2 (32nm)";
     || [deviceString isEqualToString:@"iPad2,5"]       // @"iPad mini (WiFi)";
     || [deviceString isEqualToString:@"iPad2,6"]       // @"iPad mini (GSM)";
     || [deviceString isEqualToString:@"iPad2,7"]       // @"iPad mini (CDMA)";
        
     || [deviceString isEqualToString:@"iPad3,1"]       // @"iPad 3(WiFi)";
     || [deviceString isEqualToString:@"iPad3,2"]       // @"iPad 3(CDMA)";
     || [deviceString isEqualToString:@"iPad3,3"]       // @"iPad 3(4G)";
     || [deviceString isEqualToString:@"iPad3,4"]       // @"iPad 4 (WiFi)";
     || [deviceString isEqualToString:@"iPad3,5"]       // @"iPad 4 (4G)";
     || [deviceString isEqualToString:@"iPad3,6"]       // @"iPad 4 (CDMA)";
    
     || [deviceString isEqualToString:@"iPad4,1"]       // @"iPad Air";
     || [deviceString isEqualToString:@"iPad4,2"]       // @"iPad Air";
     || [deviceString isEqualToString:@"iPad4,3"]       // @"iPad Air";
     || [deviceString isEqualToString:@"iPad5,3"]       // @"iPad Air 2";
     || [deviceString isEqualToString:@"iPad5,4"]       // @"iPad Air 2";
        
     || [deviceString isEqualToString:@"iPad4,4"]
     || [deviceString isEqualToString:@"iPad4,5"]
     || [deviceString isEqualToString:@"iPad4,6"]       // @"iPad mini 2";
    
     || [deviceString isEqualToString:@"iPad4,7"]
     || [deviceString isEqualToString:@"iPad4,8"]
     || [deviceString isEqualToString:@"iPad4,9"])      // @"iPad mini 3";
        return AppleDeviceiPadAirSeries;
    
    //iPhone Simulator
    if ([deviceString isEqualToString:@"i386"]          // @"Simulator";
     || [deviceString isEqualToString:@"x86_64"])       // @"Simulator";
        return AppleDeviceiPhoneSimulator;
    
    NSLog(@"deviceString=%@", deviceString);
 
    return AppleDeviceUnknownSets;
}

@end
