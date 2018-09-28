//
//  CCChartType.h
//  AAChartKitDemo
//
//  Created by AnAn on 2018/9/28.
//  Copyright © 2018 Danny boy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCChartType : NSObject

+ (NSString *)line;
+ (NSString *)bar;
+ (NSString *)pie;
+ (NSString *)scatter;
+ (NSString *)effectScatter;
+ (NSString *)radar;
+ (NSString *)tree;
+ (NSString *)treemap;
+ (NSString *)sunburst;
+ (NSString *)boxplot;
+ (NSString *)candlestick;
+ (NSString *)heatmap;
+ (NSString *)map;
+ (NSString *)parallel;
+ (NSString *)lines;
+ (NSString *)graph;
+ (NSString *)sankey;
+ (NSString *)funnel;
+ (NSString *)gauge;
+ (NSString *)pictorialBar;
+ (NSString *)themeRiver;
+ (NSString *)custom;

@end

NS_ASSUME_NONNULL_END
