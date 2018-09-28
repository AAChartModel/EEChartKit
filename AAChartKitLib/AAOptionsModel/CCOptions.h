//
//  CCOptions.h
//  AAChartKitDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 Danny boy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCOptions : NSObject

CCPropStatementAndPropSetFuncStatement(copy,   CCOptions, NSString *, backgroundColor);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, color);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, title);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, tooltip);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, legend);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, xAxis);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, yAxis);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, dataZoom);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, series);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, angleAxis);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, radiusAxis);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, polar);
CCPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, radar);

@end

NS_ASSUME_NONNULL_END
