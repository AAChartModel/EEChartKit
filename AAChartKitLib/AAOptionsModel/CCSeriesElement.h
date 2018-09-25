//
//  CCSeriesElement.h
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/12.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,CCAnimationEasingType) {
    CCAnimationEasingTypeLinear = 0,
    CCAnimationEasingTypeSwing,
    CCAnimationEasingTypeEaseInQuad,
    CCAnimationEasingTypeEaseOutQuad,
    CCAnimationEasingTypeEaseInOutQuad,
    CCAnimationEasingTypeEaseInCubic,
    CCAnimationEasingTypeEaseOutCubic,
    CCAnimationEasingTypeEaseInOutCubic,
    CCAnimationEasingTypeEaseInQuart,
    CCAnimationEasingTypeEaseOutQuart,
    CCAnimationEasingTypeEaseInOutQuart,
    CCAnimationEasingTypeEaseInQuint,
    CCAnimationEasingTypeEaseOutQuint,
    CCAnimationEasingTypeEaseInOutQuint,
    CCAnimationEasingTypeEaseInExpo,
    CCAnimationEasingTypeEaseOutExpo,
    CCAnimationEasingTypeEaseInOutExpo,
    CCAnimationEasingTypeEaseInSine,
    CCAnimationEasingTypeEaseOutSine,
    CCAnimationEasingTypeEaseInOutSine,
    CCAnimationEasingTypeEaseInCirc,
    CCAnimationEasingTypeEaseOutCirc,
    CCAnimationEasingTypeEaseInOutCirc,
    CCAnimationEasingTypeEaseInElastic,
    CCAnimationEasingTypeEaseOutElastic,
    CCAnimationEasingTypeEaseInOutElastic,
    CCAnimationEasingTypeEaseInBack,
    CCAnimationEasingTypeEaseOutBack,
    CCAnimationEasingTypeEaseInOutBack,
    CCAnimationEasingTypeEaseInBounce,
    CCAnimationEasingTypeEaseOutBounce,
    CCAnimationEasingTypeEaseInOutBounce,
};


@interface CCSeriesElement : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, name);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, type);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, id, animationEasing);
CCPropStatementAndPropSetFuncStatement(assign, CCSeriesElement, BOOL, smooth);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, step);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, symbol);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, stack);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, lineStyle);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, areaStyle);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, data);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, label);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, radius);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSArray *, center);
CCPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, roseType);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, markPoint);
CCPropStatementAndPropSetFuncStatement(strong, CCSeriesElement, NSDictionary *, markLine);



@end
