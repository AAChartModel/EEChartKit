//
//  AAColumn.m
//  AAChartKit
//
//  Created by An An on 17/1/5.
//  Copyright © 2017年 An An. All rights reserved.
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//*** https://github.com/AAChartModel/AAChartKit        ***
//*** https://github.com/AAChartModel/AAChartKit-Swift  ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************

/*
 
 * -------------------------------------------------------------------------------
 *
 * 🌕 🌖 🌗 🌘  ❀❀❀   WARM TIPS!!!   ❀❀❀ 🌑 🌒 🌓 🌔
 *
 * Please contact me on GitHub,if there are any problems encountered in use.
 * GitHub Issues : https://github.com/AAChartModel/AAChartKit/issues
 * -------------------------------------------------------------------------------
 * And if you want to contribute for this project, please contact me as well
 * GitHub        : https://github.com/AAChartModel
 * StackOverflow : https://stackoverflow.com/users/7842508/codeforu
 * JianShu       : http://www.jianshu.com/u/f1e6753d4254
 * SegmentFault  : https://segmentfault.com/u/huanghunbieguan
 *
 * -------------------------------------------------------------------------------
 
 */

#import "AAColumn.h"

@implementation AAColumn

- (instancetype)init {
    self = [super init];
    if (self) {
        self.grouping = YES;
    }
    return self;
}

CCPropSetFuncImplementation(AAColumn, BOOL,           grouping);
CCPropSetFuncImplementation(AAColumn, NSNumber *,     pointPadding);
CCPropSetFuncImplementation(AAColumn, NSNumber *,     groupPadding);
CCPropSetFuncImplementation(AAColumn, NSNumber *,     borderWidth);
CCPropSetFuncImplementation(AAColumn, BOOL ,          colorByPoint);
CCPropSetFuncImplementation(AAColumn, AADataLabels *, dataLabels);
CCPropSetFuncImplementation(AAColumn, NSString *,     stacking);
CCPropSetFuncImplementation(AAColumn, NSNumber *,     borderRadius);

@end
