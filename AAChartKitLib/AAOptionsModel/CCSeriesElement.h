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

AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, name);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, NSString *, type);
AAPropStatementAndPropSetFuncStatement(copy,   CCSeriesElement, id, animationEasing);
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
