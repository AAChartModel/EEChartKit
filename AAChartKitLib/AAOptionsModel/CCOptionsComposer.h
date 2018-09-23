//
//  CCOptionsComposer.h
//  AAChartKit-SlimDemo
//
//  Created by iOS-FN on 2018/9/21.
//  Copyright © 2018年 An An. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCChartModel.h"
#import "CCOptions.h"

NS_ASSUME_NONNULL_BEGIN

@interface CCOptionsComposer : NSObject

+ (CCOptions *)configureTheChartOptionsWithChartModel:(CCChartModel *)chartModel;

@end

NS_ASSUME_NONNULL_END
