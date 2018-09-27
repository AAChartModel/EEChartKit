//
//  CCChartModel.h
//  COCOA_CHARTS-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AAGlobalMacro.h"
#import "CCSeriesElement.h"
#define COCOA_CHARTS_EXTERN     extern __attribute__((visibility ("default")))


typedef NSString *CCChartType;
typedef NSString *CCChartSubtitleAlignType;
typedef NSString *CCChartZoomType;
typedef NSString *CCChartStackingType;
typedef NSString *CCChartSymbolType;
typedef NSString *CCChartSymbolStyleType;
typedef NSString *CCChartFontWeightType;

COCOA_CHARTS_EXTERN CCChartType const CCChartTypeLine;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeBar;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypePie;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeScatter;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeEffectScatter;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeRadar;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeTree;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeTreemap;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeSunburst;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeBoxplot;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeCandlestick;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeHeatmap;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeMap;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeParallel;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeLines;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeGraph;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeSankey;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeFunnel;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeGauge;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypePictorialBar;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeThemeRiver;
COCOA_CHARTS_EXTERN CCChartType const CCChartTypeCustom;

COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeCirrle;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeRect;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeRoundRect;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeTriangle;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeDiamond;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypePin;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeArrow;
COCOA_CHARTS_EXTERN CCChartSymbolType const CCChartSymbolTypeNone;

@interface CCChartModel : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, backgroundColor);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, color);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, titleText);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, titleSubtext);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, tooltipTrigger);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, tooltipFormatter);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, legendData);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, legendSelectedMode);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, xAxisType);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, xAxisData);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, yAxisType);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, yAxisData);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray <CCSeriesElement *>*, series);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, radarIndicator);

@end
