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

AAPropStatementAndPropSetFuncStatement(copy,   CCOptions, NSString *, backgroundColor);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, color);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, title);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, tooltip);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSDictionary *, legend);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, xAxis);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, yAxis);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, dataZoom);
AAPropStatementAndPropSetFuncStatement(strong, CCOptions, NSArray *, series);

@end

NS_ASSUME_NONNULL_END
