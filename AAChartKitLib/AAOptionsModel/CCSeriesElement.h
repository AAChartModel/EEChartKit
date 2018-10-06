//
//  CCSeriesElement.h
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCAnimationEasingType.h"

@interface CCSeriesElement : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, name)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, type)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, id, animationEasing)
CCPropStatementAndPropSetFuncStatement(assign, CCSeriesElement, BOOL, smooth)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, step)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, symbol)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSNumber *, symbolSize)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, stack)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, lineStyle)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, areaStyle)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, itemStyle)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, emphasis)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSNumber *, barGap)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, data)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, coordinateSystem)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, label)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, radius)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, center)
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, roseType)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, markPoint)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, markLine)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, links)
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, categories)
CCPropStatementAndPropSetFuncStatement(assign, CCSeriesElement, BOOL , focusNodeAdjacency)




@end
