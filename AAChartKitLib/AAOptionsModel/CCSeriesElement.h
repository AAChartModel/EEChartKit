//
//  CCSeriesElement.h
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AAGlobalMacro.h"


@interface CCSeriesElement : NSObject

AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, name);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, type);
AAPropStatementAndPropSetFuncStatement(assign, CCSeriesElement, BOOL, smooth);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, step);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, symbol);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, stack);
AAPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, areaStyle);
AAPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, data);
AAPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, label);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, radius);
AAPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, center);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, roseType);

@end
