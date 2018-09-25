//
//  AASeries.m
//  AAChartKit
//
//  Created by An An on 17/1/19.
//  Copyright © 2017年 An An. All rights reserved.
//
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//***    https://github.com/AAChartModel/AAChartKit     ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************
//

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

#import "AASeries.h"

@implementation AASeries

CCPropSetFuncImplementation(AASeries, NSNumber     *, borderRadius);
CCPropSetFuncImplementation(AASeries, AAMarker     *, marker);
CCPropSetFuncImplementation(AASeries, NSString     *, stacking);
CCPropSetFuncImplementation(AASeries, AAAnimation  *, animation);
CCPropSetFuncImplementation(AASeries, NSArray      *, keys);
//CCPropSetFuncImplementation(AASeries, BOOL , colorByPoint);//设置为 true 则是给每个点分配颜色。
CCPropSetFuncImplementation(AASeries, BOOL ,          connectNulls);
CCPropSetFuncImplementation(AASeries, NSDictionary *, events);

@end
