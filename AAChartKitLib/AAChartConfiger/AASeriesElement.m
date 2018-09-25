//
//  AASeriesElement.m
//  AAChartKit
//
//  Created by An An on 17/1/19.
//  Copyright © 2017年 An An. xAll rights reserved.
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


#import "AASeriesElement.h"

@implementation AASeriesElement

- (instancetype)init {
    self = [super init];
    if (self) {
        _allowPointSelect = false;
        _colorByPoint = false;
        _showInLegend = true;
        _visible = true;
    }
    return self;
}

CCPropSetFuncImplementation(AASeriesElement, NSString *, type);
CCPropSetFuncImplementation(AASeriesElement, BOOL      , allowPointSelect);//是否允许在点击数据点标记（markers）、柱子（柱形图）、扇区（饼图）时选中该点，选中的点可以通过 Chart.getSelectedPoints 来获取。 默认是：false.
CCPropSetFuncImplementation(AASeriesElement, NSString *, name);
CCPropSetFuncImplementation(AASeriesElement, NSArray  *, data);
CCPropSetFuncImplementation(AASeriesElement, NSString *, color);
CCPropSetFuncImplementation(AASeriesElement, BOOL      , colorByPoint);//When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive one color per series or one color per point. 默认是：false.
CCPropSetFuncImplementation(AASeriesElement, AAMarker *, marker);
CCPropSetFuncImplementation(AASeriesElement, NSString *, stacking);
CCPropSetFuncImplementation(AASeriesElement, NSString *, dashStyle);
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, threshold);
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, lineWidth);//折线图、曲线图、直方折线图、折线填充图、曲线填充图、直方折线填充图的线条宽度
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, borderWidth)//柱形图、条形图、扇形图等图形的描边宽度
CCPropSetFuncImplementation(AASeriesElement, NSString *, borderColor);//柱形图、条形图、扇形图等图形的描边颜色
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, fillColor);//折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, fillOpacity);//折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色透明度
CCPropSetFuncImplementation(AASeriesElement, NSString *, negativeColor); //The color for the parts of the graph or points that are below the threshold
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, borderRadius);
CCPropSetFuncImplementation(AASeriesElement, NSString *, innerSize);
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, size);
CCPropSetFuncImplementation(AASeriesElement, NSArray  *, keys);
CCPropSetFuncImplementation(AASeriesElement, NSNumber *, yAxis);
CCPropSetFuncImplementation(AASeriesElement, AADataLabels*, dataLabels);
CCPropSetFuncImplementation(AASeriesElement, id        , step);//是否转变为直方折线图
CCPropSetFuncImplementation(AASeriesElement, NSDictionary *, states);
CCPropSetFuncImplementation(AASeriesElement, BOOL        , showInLegend);//Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series. 默认是：true.
CCPropSetFuncImplementation(AASeriesElement, BOOL        , visible);//数据列是否显示的状态,可以通过 series.show()、series.hide()、series.setVisible 来改变这个属性

@end
