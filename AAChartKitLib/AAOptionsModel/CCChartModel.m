//
//  CCChartModel.m
//  CCChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import "CCChartModel.h"

CCChartType const CCChartTypeLine = @"line";
CCChartType const CCChartTypeBar = @"bar";
CCChartType const CCChartTypePie = @"pie";
CCChartType const CCChartTypeScatter = @"scatter";
CCChartType const CCChartTypeEffectScatter  = @"effectScatter";
CCChartType const CCChartTypeRadar = @"radar";
CCChartType const CCChartTypeTree = @"tree";
CCChartType const CCChartTypeTreemap = @"treemap";
CCChartType const CCChartTypeSunburst = @"sunburst";
CCChartType const CCChartTypeBoxplot = @"boxplot";
CCChartType const CCChartTypeCandlestick = @"candlestick";
CCChartType const CCChartTypeHeatmap = @"heatmap";
CCChartType const CCChartTypeMap = @"map";
CCChartType const CCChartTypeParallel = @"parallel";
CCChartType const CCChartTypeLines = @"Lines";
CCChartType const CCChartTypeGraph = @"graph";
CCChartType const CCChartTypeSankey = @"sankey";
CCChartType const CCChartTypeFunnel = @"funnel";
CCChartType const CCChartTypeGauge = @"gauge";
CCChartType const CCChartTypePictorialBar = @"pictorialBar";
CCChartType const CCChartTypeThemeRiver = @"ThemeRiver";
CCChartType const CCChartTypeCustom = @"custom";

@implementation CCChartModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _color = @[@"#8A2BE2",@"#fe117c",@"#ffc069",@"#06caf4",@"#7dffc0",];
    }
    return self;
}

AAPropSetFuncImplementation(CCChartModel, NSString *, backgroundColor);
AAPropSetFuncImplementation(CCChartModel, NSArray  *, color);
AAPropSetFuncImplementation(CCChartModel, NSString *, titleText);
AAPropSetFuncImplementation(CCChartModel, NSString *, titleSubtext)
AAPropSetFuncImplementation(CCChartModel, NSString *, tooltipTrigger);
AAPropSetFuncImplementation(CCChartModel, NSString *, tooltipFormatter);
AAPropSetFuncImplementation(CCChartModel, NSArray  *, legendData);
AAPropSetFuncImplementation(CCChartModel, NSArray  *, xAxisData);
AAPropSetFuncImplementation(CCChartModel, NSArray <CCSeriesElement *>*, series);

@end
