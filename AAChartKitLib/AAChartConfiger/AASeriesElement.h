//
//  AASeriesElement.h
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

@class AAMarker,AADataLabels;

@interface AASeriesElement : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, type);
CCPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL      , allowPointSelect);//是否允许在点击数据点标记（markers）、柱子（柱形图）、扇区（饼图）时选中该点，选中的点可以通过 Chart.getSelectedPoints 来获取。 默认是：false.
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, name);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSArray  *, data);
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, color);
CCPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL      , colorByPoint);//When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive one color per series or one color per point. 默认是：false.
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, AAMarker *, marker);
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, stacking);
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, dashStyle);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, threshold);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, lineWidth);//折线图、曲线图、直方折线图、折线填充图、曲线填充图、直方折线填充图的线条宽度
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, borderWidth)//柱形图、条形图、扇形图等图形的描边宽度
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, borderColor);//柱形图、条形图、扇形图顿号等图形的描边颜色
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, fillColor);//折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, fillOpacity);//折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色透明度
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, negativeColor); // The color for the parts of the graph or points that are below the threshold
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, borderRadius);
CCPropStatementAndPropSetFuncStatement(copy,   AASeriesElement, NSString *, innerSize);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, size);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSArray  *, keys);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSNumber *, yAxis);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, AADataLabels*, dataLabels);
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, id        , step);//是否转变为直方折线图
CCPropStatementAndPropSetFuncStatement(strong, AASeriesElement, NSDictionary *, states);
CCPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL        , showInLegend);//Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series. 默认是：true.
CCPropStatementAndPropSetFuncStatement(assign, AASeriesElement, BOOL        , visible);//数据列是否显示的状态,可以通过 series.show()、series.hide()、series.setVisible 来改变这个属性

@end


