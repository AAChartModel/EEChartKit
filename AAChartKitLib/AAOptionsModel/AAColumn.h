//
//  AAColumn.h
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

@class AADataLabels;

@interface AAColumn : NSObject

CCPropStatementAndPropSetFuncStatement(assign, AAColumn, BOOL,           grouping);//Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other. 默认是：true.
CCPropStatementAndPropSetFuncStatement(strong, AAColumn, NSNumber *,     pointPadding);
CCPropStatementAndPropSetFuncStatement(strong, AAColumn, NSNumber *,     groupPadding);
CCPropStatementAndPropSetFuncStatement(strong, AAColumn, NSNumber *,     borderWidth);
CCPropStatementAndPropSetFuncStatement(assign, AAColumn, BOOL,           colorByPoint);//对每个不同的点设置颜色(当图表类型为 AAColumn 时,设置为 AAColumn 对象的属性,当图表类型为 bar 时,应该设置为 bar 对象的属性才有效)
CCPropStatementAndPropSetFuncStatement(strong, AAColumn, AADataLabels *, dataLabels);
CCPropStatementAndPropSetFuncStatement(copy,   AAColumn, NSString *,     stacking);
CCPropStatementAndPropSetFuncStatement(strong, AAColumn, NSNumber *,     borderRadius);

@end
