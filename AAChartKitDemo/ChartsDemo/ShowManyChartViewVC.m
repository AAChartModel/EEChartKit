
//  SpecialChartVC.m
//  AAChartKit
//
//  Created by An An on 17/3/23.
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

#import "ShowManyChartViewVC.h"
#import "AAChartView.h"
@interface ShowManyChartViewVC ()

@end

@implementation ShowManyChartViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"同时显示多个 AAChartView";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpTheAAChartViewOne];
    [self setUpTheAAChartViewTwo];
 
}

//配置第一个 AAChartView
- (void)setUpTheAAChartViewOne {
    CGFloat chartViewWidth  = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    
    AAChartView *aaChartView = [[AAChartView alloc]initWithFrame:CGRectMake(0, 60, chartViewWidth, screenHeight/2)];
    aaChartView.scrollEnabled = NO;
    [self.view addSubview:aaChartView];

   CCChartModel *ccChartModel = CCChartModel.new
    .titleTextSet(@"堆叠区域图")
    .tooltipTriggerSet(@"axis")
    .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
    .xAxisDataSet(@[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"])
    .seriesSet(@[
                 CCSeriesElement.new
                 .nameSet(@"邮件营销")
                 .typeSet(CCChartType.bar)
                 .dataSet(@[@7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3, @18.3, @13.9, @9.6]),
                 
                 CCSeriesElement.new
                 .nameSet(@"联盟广告")
                 .typeSet(CCChartType.bar)
                 .dataSet(@[@0.2, @0.8, @5.7, @11.3, @17.0, @22.0, @24.8, @24.1, @20.1, @14.1, @8.6, @2.5]),
                 
                 CCSeriesElement.new
                 .nameSet(@"视频广告")
                 .typeSet(CCChartType.bar)
                 .dataSet(@[@0.1, @0.6, @3.5, @8.4, @13.5, @17.0, @18.6, @17.9, @14.3, @9.0, @3.9, @1.0]),
                 
                 CCSeriesElement.new
                 .nameSet(@"直接访问")
                 .typeSet(CCChartType.bar)
                 .dataSet(@[@3.9, @4.2, @5.7, @8.5, @11.9, @15.2, @17.0, @16.6, @14.2, @10.3, @6.6, @4.8]),
                 
                 ]);
        
    [aaChartView aa_drawChartWithChartModel:ccChartModel];
    
}

//配置第二个 AAChartView
- (void)setUpTheAAChartViewTwo {
    CGFloat chartViewWidth  = self.view.frame.size.width;
    CGFloat screenHeight = self.view.frame.size.height;
    
    AAChartView *aaChartView2 = [[AAChartView alloc]initWithFrame:CGRectMake(0, screenHeight/2+60, chartViewWidth, screenHeight/2-60)];
    aaChartView2.scrollEnabled = NO;
    [self.view addSubview:aaChartView2];
    
      CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"堆叠区域图")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
        .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet((id)(@1))
                     .smoothSet(YES)
                     .dataSet(@[@0.45, @0.43, @0.50, @0.55, @0.58, @0.62, @0.83, @0.39, @0.56, @0.67, @0.50, @0.34, @0.50, @0.67, @0.58, @0.29, @0.46, @0.23, @0.47, @0.46, @0.38, @0.56, @0.48, @0.36]),
                     
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet((id)(@1))
                     .smoothSet(YES)
                     .dataSet(@[@0.38, @0.31, @0.32, @0.32, @0.64, @0.66, @0.86, @0.47, @0.52, @0.75, @0.52, @0.56, @0.54, @0.60, @0.46, @0.63, @0.54, @0.51, @0.58, @0.64, @0.60, @0.45, @0.36, @0.67]),
                     
                     CCSeriesElement.new
                     .nameSet(@"视频广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet((id)(@1))
                     .smoothSet(YES)
                     .dataSet(@[@0.46, @0.32, @0.53, @0.58, @0.86, @0.68, @0.85, @0.73, @0.69, @0.71, @0.91, @0.74, @0.60, @0.50, @0.39, @0.67, @0.55, @0.49, @0.65, @0.45, @0.64, @0.47, @0.63, @0.64]),
                     
                     CCSeriesElement.new
                     .nameSet(@"直接访问")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet((id)(@1))
                     .smoothSet(YES)
                     .dataSet(@[@0.60, @0.51, @0.52, @0.53, @0.64, @0.84, @0.65, @0.68, @0.63, @0.47, @0.72, @0.60, @0.65, @0.74, @0.66, @0.65, @0.71, @0.59, @0.65, @0.77, @0.52, @0.53, @0.58, @0.53]),
                     
                     ]);
    
    [aaChartView2 aa_drawChartWithChartModel:ccChartModel];        
}



@end
