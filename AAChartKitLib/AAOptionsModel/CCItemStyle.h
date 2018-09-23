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

AAPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, color);
AAPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, borderColor);
AAPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, borderWidth);
AAPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, borderType);
AAPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowBlur);
AAPropStatementAndPropSetFuncStatement(copy, CCItemStyle, NSString *, shadowColor);
AAPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowOffsetX);
AAPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, shadowOffsetY);
AAPropStatementAndPropSetFuncStatement(strong, CCItemStyle, NSNumber *, opacity);



@end

NS_ASSUME_NONNULL_END
