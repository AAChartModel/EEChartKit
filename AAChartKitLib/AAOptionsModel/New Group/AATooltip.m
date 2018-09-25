//
//  AATooltip.m
//  AAChartKit
//
//  Created by An An on 17/1/5.
//  Copyright © 2017年 An An. All rights reserved.
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//*** https://github.com/AAChartModel/AAChartKit        ***
//*** https://github.com/AAChartModel/AAChartKit-Swift  ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************

/*
 
 * -------------------------------------------------------------------------------
 *
 * 🌕 🌖 🌗 🌘  ❀❀❀   WARM TIPS!!!   ❀❀❀ 🌑 🌒 🌓 🌔
 *
 * Please contact me on GitHub,if there are any problems encountered in use.
 * GitHub Issues : https://github.com/AAChartModel/AAChartKit/issues
 * -------------------------------------------------------------------------------
 * And if you want to contribute for this project, please contact me as well
 * GitHub        : https://github.com/AAChartModel
 * StackOverflow : https://stackoverflow.com/users/7842508/codeforu
 * JianShu       : http://www.jianshu.com/u/f1e6753d4254
 * SegmentFault  : https://segmentfault.com/u/huanghunbieguan
 *
 * -------------------------------------------------------------------------------
 
 */

#import "AATooltip.h"

@implementation AATooltip

//CCPropSetFuncImplementation(AATooltip, BOOL,       animation);//是否启用动画是否启用动画(设置 animation == false,禁用 tooltip 动画能够在一定程度上节省程序的计算资源,提高运行效率,但是在现如今移动设备的性能如此强劲的时代大背景下,节省的这一点计算资源基本上没有任何意义,所以我注释掉了这个属性)
CCPropSetFuncImplementation(AATooltip, NSString *, backgroundColor);//背景色
CCPropSetFuncImplementation(AATooltip, NSString *, borderColor);//边框颜色
CCPropSetFuncImplementation(AATooltip, NSNumber *, borderRadius);//边框的圆角半径
CCPropSetFuncImplementation(AATooltip, NSNumber *, borderWidth);//边框宽度
CCPropSetFuncImplementation(AATooltip, NSDictionary *, style);//为提示框添加CSS样式。提示框同样能够通过 CSS 类 .highcharts-tooltip 来设定样式。 默认是：@{@"color":@"#ffffff",@"cursor":@"default",@"fontSize":@"12px",@"pointerEvents":@"none",@"whiteSpace":@"nowrap" }

CCPropSetFuncImplementation(AATooltip, BOOL,       enabled);
CCPropSetFuncImplementation(AATooltip, BOOL,       useHTML);
CCPropSetFuncImplementation(AATooltip, NSString *, formatter);
CCPropSetFuncImplementation(AATooltip, NSString *, headerFormat);
CCPropSetFuncImplementation(AATooltip, NSString *, pointFormat);
CCPropSetFuncImplementation(AATooltip, NSString *, footerFormat);
CCPropSetFuncImplementation(AATooltip, NSNumber *, valueDecimals);//设置取值精确到小数点后几位
CCPropSetFuncImplementation(AATooltip, BOOL,       shared);
CCPropSetFuncImplementation(AATooltip, BOOL,       crosshairs);
CCPropSetFuncImplementation(AATooltip, NSString *, valueSuffix);
//CCPropSetFuncImplementation(AATooltip, BOOL,       followTouchMove);


@end
