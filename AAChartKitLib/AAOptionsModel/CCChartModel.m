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

CCChartSymbolType const CCChartSymbolTypeCircle = @"circle";
CCChartSymbolType const CCChartSymbolTypeRect = @"rect";
CCChartSymbolType const CCChartSymbolTypeRoundRect = @"roundRect";
CCChartSymbolType const CCChartSymbolTypeTriangle = @"triangle";
CCChartSymbolType const CCChartSymbolTypeDiamond = @"diamond";
CCChartSymbolType const CCChartSymbolTypePin = @"pin";
CCChartSymbolType const CCChartSymbolTypeArrow = @"arrow";
CCChartSymbolType const CCChartSymbolTypeNone = @"none";

@implementation CCChartModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _color = @[@"#8A2BE2",@"#fe117c",@"#ffc069",@"#06caf4",@"#7dffc0",];
//        .xAxisTypeSet(@"category")
//        .yAxisTypeSet(@"value")
        _xAxisType = @"category";
        _yAxisType = @"value";
    }
    return self;
}

CCPropSetFuncImplementation(CCChartModel, NSString *, backgroundColor);
CCPropSetFuncImplementation(CCChartModel, NSArray  *, color);
CCPropSetFuncImplementation(CCChartModel, NSString *, titleText);
CCPropSetFuncImplementation(CCChartModel, NSString *, titleSubtext)
CCPropSetFuncImplementation(CCChartModel, NSString *, tooltipTrigger);
CCPropSetFuncImplementation(CCChartModel, NSString *, tooltipFormatter);
CCPropSetFuncImplementation(CCChartModel, NSArray  *, legendData);
CCPropSetFuncImplementation(CCChartModel, NSString *, xAxisType)
CCPropSetFuncImplementation(CCChartModel, NSArray  *, xAxisData);
CCPropSetFuncImplementation(CCChartModel, NSString *, yAxisType)
CCPropSetFuncImplementation(CCChartModel, NSArray  *, yAxisData);
CCPropSetFuncImplementation(CCChartModel, NSArray <CCSeriesElement *>*, series);

@end
