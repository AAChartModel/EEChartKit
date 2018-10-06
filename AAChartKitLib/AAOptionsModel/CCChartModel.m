//
//  CCChartModel.m
//  CCChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import "CCChartModel.h"

@implementation CCChartModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _color = @[@"#8A2BE2",@"#fe117c",@"#ffc069",@"#06caf4",@"#7dffc0",];
//        .xAxisTypeSet(@"category")
//        .yAxisTypeSet(@"value")
        _xAxisType = @"category";
        _yAxisType = @"value";
        _tooltipTrigger = @"axis";
//        .tooltipTriggerSet(@"axis")
//        .xAxisTypeSet(@"category")
//        .yAxisTypeSet(@"value")
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
CCPropSetFuncImplementation(CCChartModel, NSString *, legendSelectedMode);
CCPropSetFuncImplementation(CCChartModel, NSString *, xAxisType);
CCPropSetFuncImplementation(CCChartModel, NSString *, xAxisPosition);
CCPropSetFuncImplementation(CCChartModel, NSArray  *, xAxisData);
CCPropSetFuncImplementation(CCChartModel, NSString *, yAxisType);
CCPropSetFuncImplementation(CCChartModel, NSArray  *, yAxisData);
CCPropSetFuncImplementation(CCChartModel, NSArray <CCSeriesElement *>*, series);
CCPropSetFuncImplementation(CCChartModel, NSArray  *, radarIndicator);
CCPropSetFuncImplementation(CCChartModel, NSDictionary *, polar)

@end
