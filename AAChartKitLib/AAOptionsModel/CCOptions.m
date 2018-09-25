//
//  CCOptions.m
//  AAChartKitDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 Danny boy. All rights reserved.
//

#import "CCOptions.h"

@implementation CCOptions

CCPropSetFuncImplementation(CCOptions, NSString *, backgroundColor);
CCPropSetFuncImplementation(CCOptions, NSArray *, color);
CCPropSetFuncImplementation(CCOptions, NSDictionary *, title);
CCPropSetFuncImplementation(CCOptions, NSDictionary *, tooltip);
CCPropSetFuncImplementation(CCOptions, NSDictionary *, legend);
CCPropSetFuncImplementation(CCOptions, NSArray *, xAxis);
CCPropSetFuncImplementation(CCOptions, NSArray *, yAxis);
CCPropSetFuncImplementation(CCOptions, NSArray *, dataZoom);
CCPropSetFuncImplementation(CCOptions, NSArray *, series);

@end
