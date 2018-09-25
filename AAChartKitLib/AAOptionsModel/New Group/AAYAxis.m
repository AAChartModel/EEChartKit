//
//  AAYAxis.m
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

#import "AAYAxis.h"

@implementation AAYAxis

//CCPropSetFuncImplementation(AAYAxis, BOOL,       min);
CCPropSetFuncImplementation(AAYAxis, AATitle  *, title);
CCPropSetFuncImplementation(AAYAxis, NSArray  *, plotLines);
CCPropSetFuncImplementation(AAYAxis, BOOL,       reversed);
CCPropSetFuncImplementation(AAYAxis, NSNumber *, gridLineWidth);
CCPropSetFuncImplementation(AAYAxis, NSString *, gridLineColor);
CCPropSetFuncImplementation(AAYAxis, NSString *, alternateGridColor);
CCPropSetFuncImplementation(AAYAxis, AAYAxisGridLineInterpolation, gridLineInterpolation);
CCPropSetFuncImplementation(AAYAxis, AALabels *, labels);
CCPropSetFuncImplementation(AAYAxis, NSNumber *, lineWidth);//y轴线宽度
CCPropSetFuncImplementation(AAYAxis, NSString *, lineColor);// y 轴线颜色

CCPropSetFuncImplementation(AAYAxis, BOOL,       allowDecimals); //y轴是否允许显示小数
CCPropSetFuncImplementation(AAYAxis, NSNumber *, max); //y轴最大值
CCPropSetFuncImplementation(AAYAxis, NSNumber *, min); //y轴最小值（设置为0就不会有负数）
//CCPropSetFuncImplementation(AAYAxis, NSNumber *, minPadding); //Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. 默认是：0.05.
CCPropSetFuncImplementation(AAYAxis, NSArray  *, tickPositions);//自定义Y轴坐标（如：[@(0), @(25), @(50), @(75) , (100)]）
CCPropSetFuncImplementation(AAYAxis, BOOL,       visible); //y轴是否允许显示
CCPropSetFuncImplementation(AAYAxis, BOOL,       opposite);//是否将坐标轴显示在对立面，默认情况下 x 轴是在图表的下方显示，y 轴是在左方，坐标轴显示在对立面后，x 轴是在上方显示，y 轴是在右方显示（即坐标轴会显示在对立面）。该配置一般是用于多坐标轴区分展示，另外在 Highstock 中，y 轴默认是在对立面显示的。 默认是：false.
CCPropSetFuncImplementation(AAYAxis, NSNumber *, tickInterval);
CCPropSetFuncImplementation(AAYAxis, AACrosshair*, crosshair); //准星线样式设置
CCPropSetFuncImplementation(AAYAxis, AALabels *, stackLabels);



@end
