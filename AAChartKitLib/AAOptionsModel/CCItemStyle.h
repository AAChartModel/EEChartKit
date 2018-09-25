//
//  CCItemStyle.h
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AAGlobalMacro.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCItemStyle : NSObject

CCPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, color);
CCPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, borderColor);
CCPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, borderWidth);
CCPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, borderType);
CCPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowBlur);
CCPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, shadowColor);
CCPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowOffsetX);
CCPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowOffsetY);
CCPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, opacity);



@end

NS_ASSUME_NONNULL_END
