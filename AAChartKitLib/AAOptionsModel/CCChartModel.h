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
#import "CCChartType.h"
#import "CCChartSymbolType.h"

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
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, xAxisPosition);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, xAxisData);
CCPropStatementAndPropSetFuncStatement(copy,   CCChartModel, NSString *, yAxisType);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, yAxisData);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray <CCSeriesElement *>*, series);
CCPropStatementAndPropSetFuncStatement(strong, CCChartModel, NSArray  *, radarIndicator);

@end
