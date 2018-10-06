//
//  CCSeriesElement.m
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import "CCSeriesElement.h"

@implementation CCSeriesElement

- (instancetype)init {
    self = [super init];
    if (self) {
        _symbolSize = @13;
    }
    return self;
}

CCPropSetFuncImplementation(CCSeriesElement, NSString *, name)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, type)
CCPropSetFuncImplementation(CCSeriesElement, id, animationEasing)
CCPropSetFuncImplementation(CCSeriesElement, BOOL, smooth)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, step)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, symbol)
CCPropSetFuncImplementation(CCSeriesElement, NSNumber *, symbolSize)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, stack)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, lineStyle)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, areaStyle)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, itemStyle)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, emphasis)
CCPropSetFuncImplementation(CCSeriesElement, NSNumber *, barGap)
CCPropSetFuncImplementation(CCSeriesElement, NSArray *, data)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, coordinateSystem)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, label)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, radius)
CCPropSetFuncImplementation(CCSeriesElement, NSArray *, center)
CCPropSetFuncImplementation(CCSeriesElement, NSString *, roseType)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, markPoint)
CCPropSetFuncImplementation(CCSeriesElement, NSDictionary *, markLine)
CCPropSetFuncImplementation(CCSeriesElement, NSArray *, links)
CCPropSetFuncImplementation(CCSeriesElement, NSArray *, categories)
CCPropSetFuncImplementation(CCSeriesElement, BOOL , focusNodeAdjacency)

@end
