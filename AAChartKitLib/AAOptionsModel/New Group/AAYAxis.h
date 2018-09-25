//
//  AAYAxis.h
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

#import <Foundation/Foundation.h>

@class AATitle,AALabels,AACrosshair;

typedef NSString *AAYAxisGridLineInterpolation;
static AAYAxisGridLineInterpolation const AAYAxisGridLineInterpolationCircle  = @"circle";//圆形
static AAYAxisGridLineInterpolation const AAYAxisGridLineInterpolationPolygon = @"polygon";//多边形

@interface AAYAxis : NSObject

//CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, BOOL,       min);
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, AATitle  *, title);
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, NSArray  *, plotLines);
CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, BOOL,       reversed);
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, NSNumber *, gridLineWidth);// y 轴网格线宽度
CCPropStatementAndPropSetFuncStatement(copy,   AAYAxis, NSString *, gridLineColor);// y 轴网格线颜色
CCPropStatementAndPropSetFuncStatement(copy,   AAYAxis, NSString *, alternateGridColor);//backcolor of every other grid line area
CCPropStatementAndPropSetFuncStatement(copy,   AAYAxis, AAYAxisGridLineInterpolation, gridLineInterpolation);//Polar charts only. Whether the grid lines should draw as a polygon with straight lines between categories, or as circles. Can be either circle or polygon. 默认是：null.
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, AALabels *, labels);//用于设置 y 轴是否显示
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, NSNumber *, lineWidth);// y 轴线宽度
CCPropStatementAndPropSetFuncStatement(copy,   AAYAxis, NSString *, lineColor);// y 轴线颜色

CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, BOOL,       allowDecimals); //y轴是否允许显示小数
CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, NSNumber *, max); //y轴最大值
CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, NSNumber *, min); //y轴最小值（设置为0就不会有负数）
//CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, NSNumber *, minPadding); //Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. 默认是：0.05.
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, NSArray  *, tickPositions);//自定义Y轴坐标（如：[@(0), @(25), @(50), @(75) , (100)]）
CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, BOOL,       visible); //y轴是否允许显示
CCPropStatementAndPropSetFuncStatement(assign, AAYAxis, BOOL,       opposite);//是否将坐标轴显示在对立面，默认情况下 x 轴是在图表的下方显示，y 轴是在左方，坐标轴显示在对立面后，x 轴是在上方显示，y 轴是在右方显示（即坐标轴会显示在对立面）。该配置一般是用于多坐标轴区分展示，另外在 Highstock 中，y 轴默认是在对立面显示的。 默认是：false.
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, NSNumber *, tickInterval);
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, AACrosshair*, crosshair); //准星线样式设置
CCPropStatementAndPropSetFuncStatement(strong, AAYAxis, AALabels *, stackLabels);


@end
