//
//  CCOptions.m
//  AAChartKitDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 Danny boy. All rights reserved.
//

#import "CCOptions.h"

@implementation CCOptions

AAPropSetFuncImplementation(CCOptions, NSString *, backgroundColor);
AAPropSetFuncImplementation(CCOptions, NSArray *, color);
AAPropSetFuncImplementation(CCOptions, NSDictionary *, title);
AAPropSetFuncImplementation(CCOptions, NSDictionary *, tooltip);
AAPropSetFuncImplementation(CCOptions, NSDictionary *, legend);
AAPropSetFuncImplementation(CCOptions, NSArray *, xAxis);
AAPropSetFuncImplementation(CCOptions, NSArray *, yAxis);
AAPropSetFuncImplementation(CCOptions, NSArray *, dataZoom);
AAPropSetFuncImplementation(CCOptions, NSArray *, series);

@end
