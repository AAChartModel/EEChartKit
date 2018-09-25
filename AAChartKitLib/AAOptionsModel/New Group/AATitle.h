//
//  AATitle.h
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

@class AAStyle;

typedef NSString * AAChartTitleAlignType;
static AAChartTitleAlignType const AAChartTitleAlignTypeLeft   = @"left";
static AAChartTitleAlignType const AAChartTitleAlignTypeCenter = @"center";
static AAChartTitleAlignType const AAChartTitleAlignTypeRight  = @"right";

typedef NSString * AAChartTitleVerticalAlignType;
static AAChartTitleVerticalAlignType const AAChartTitleVerticalAlignTypeTop    = @"top";
static AAChartTitleVerticalAlignType const AAChartTitleVerticalAlignTypeMiddle = @"middle";
static AAChartTitleVerticalAlignType const AAChartTitleVerticalAlignTypeBottom = @"bottom";

@interface AATitle : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   AATitle, NSString *, text);
CCPropStatementAndPropSetFuncStatement(strong, AATitle, AAStyle  *, style);
CCPropStatementAndPropSetFuncStatement(copy,   AATitle, AAChartTitleAlignType, align);
CCPropStatementAndPropSetFuncStatement(copy,   AATitle, AAChartTitleVerticalAlignType, verticalAlign);
CCPropStatementAndPropSetFuncStatement(strong, AATitle, NSNumber *, y);//标题相对于垂直对齐的偏移量，取值范围：图表的上边距（chart.spacingTop ）到图表的下边距（chart.spacingBottom），可以是负值，单位是px。默认值和字体大小有关。
CCPropStatementAndPropSetFuncStatement(assign, AATitle, BOOL          , useHTML);//是否 使用HTML渲染标题。 默认是：false.

@end
