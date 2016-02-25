# iPhoneOriPad-for-Objective-C
This project is for Objective-C program and it is get device's infos . It is able to judge the device's type about iPhone or iPad.   

这个项目是获取基设备基本信息， 可以判断设备类型是iPhone 或者 iPad


这个枚举是判断当前运行的系统是什么类型  

注意：在模拟器中运行的时候，是显示模拟器枚举类型

typedef enum {
AppleDeviceUnknownSets = -1,                未知设备
AppleDeviceiPhoneUnderneath4Series = 0,     iPhone4系列以下
AppleDeviceiPhone4Series = 1,               iPhone4系列
AppleDeviceiPhone5Series = 2,               iPhone5系列
AppleDeviceiPhone6Series = 3,               iPhone6系列
AppleDeviceiPhone6PlusSeries = 4,           iPhone6plus系列
AppleDeviceiPadAirSeries = 5,               iPad系列   iPad air,iPad Retina
AppleDeviceiPadProSeries = 6,               iPadPro系列
AppleDeviceiPodSeries = 7,                  iPod系列
AppleDeviceiPhoneSimulator = 8              iPhone模拟器   在xcode模拟器中运行的时候，是显示模拟器状态的
}ZRAppleDeviceName;

@interface ZRAppleInfos : NSObject


返回是iPhone还是iPad
/**
* whether iPhone or iPad
* return YES is iPhone
* return No is iPad
*/
+ (BOOL)isiPhoneOriPad;

返回设备的昵称
/**
* Our device nickname
*/
+ (NSString *)phoneName;

返回设备的版本号
/**
* Our device's system version
*/
+ (CGFloat)phoneVersion;

返回设备的规格类型
/**
* return device's type
*/
+ (ZRAppleDeviceName)deviceType;
