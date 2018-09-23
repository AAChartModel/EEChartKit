//
//  CCOptionsComposer.m
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 An An. All rights reserved.
//

#import "CCOptionsComposer.h"


@implementation CCOptionsComposer

+ (CCOptions *)configureTheChartOptionsWithChartModel:(CCChartModel *)chartModel {
    
//    NSDictionary *option = @{
//                             @"title": @{
//                                     @"text": chartModel.titleText
//                                     },
//                             @"tooltip" : @{
//                                     @"trigger": chartModel.tooltipTrigger,
//                                     },
//                             @"legend": @{
//                                     @"data":chartModel.legendData
//                                     },
//
//                             @"xAxis" : @[
//                                     @{
//                                         @"type" : @"category",
//                                         @"boundaryGap" : @false,
//                                         @"data" : chartModel.xAxisData
//                                         }
//                                     ],
//                             @"yAxis" : @[
//                                     @{
//                                         @"type" : @"value"
//                                         }
//                                     ],
//                             @"series" : chartModel.series
//                             };
//
    
    NSDictionary *title = @{
                            @"text": chartModel.titleText ? chartModel.titleText:@""
                            };
    
    NSDictionary *tooltip = @{
                              @"trigger": chartModel.tooltipTrigger ? chartModel.tooltipTrigger:@"",
                              @"formatter":chartModel.tooltipFormatter ? chartModel.tooltipFormatter:[NSNull null]
                              };
    

    NSDictionary *legend = @{
                             @"data":chartModel.legendData ? chartModel.legendData:[NSNull null],
                             };
    
   
    
    NSArray *xAxis = @[
                       @{
                           @"type" : @"category",
                           @"boundaryGap" : @false,
                           @"data" : chartModel.xAxisData ? chartModel.xAxisData:@"",
                           @"scale":@true
                           }
                       ];
    
    NSArray *yAxis = @[
                       @{
                           @"type" : @"value",
                           @"scale":@true

                           }
                       ];
//    NSArray *dataZoom = @[ @{
//                               @"start": @0,
//                               @"end": @10,
//                               @"handleIcon": @"M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z",
//                               @"handleSize": @"80%",
//                               @"handleStyle": @{
//                                       @"color": @"#fff",
//                                       @"shadowBlur": @3,
//                                       @"shadowColor": @"rgba(0, 0, 0, 0.6)",
//                                       @"shadowOffsetX": @2,
//                                       @"shadowOffsetY": @2
//                                       }
//
//                               }];

    
    

    NSMutableDictionary *legendDic = [NSMutableDictionary dictionary];
    [legendDic setValue:chartModel.legendData forKey:@"data"];
    

    
    CCOptions *options = CCOptions.new;
    options.title = title;
    options.tooltip = tooltip;
    options.series = chartModel.series;
    options.color = chartModel.color;
//    options.dataZoom = dataZoom;
    
    CCSeriesElement *seriesElement = chartModel.series[0];
    NSString *chartType = seriesElement.type;
    if (![chartType isEqualToString:@"pie"]) {
            options.xAxis = xAxis;
            options.yAxis = yAxis;
    }
    
    if (legendDic.allKeys.count != 0) {
        options.legend = legend;
    }
    
    return options;
}

@end
