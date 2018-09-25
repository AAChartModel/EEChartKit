//
//  AAPlotOptions.h
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

#import <Foundation/Foundation.h>

@class AAColumn,AABar,AALine,AASpline,AAArea,AAAreaspline,AAPie,AASeries;

@interface AAPlotOptions : NSObject

CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AAColumn     *, column);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AALine       *, line);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AAPie        *, pie);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AABar        *, bar);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AASpline     *, spline);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AASeries     *, series);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AAArea       *, area);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, AAAreaspline *, areaspline);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, NSObject     *, columnrange);
CCPropStatementAndPropSetFuncStatement(strong, AAPlotOptions, NSObject     *, arearange);

@end
