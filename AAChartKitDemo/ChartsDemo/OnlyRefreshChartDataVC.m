
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

#import "OnlyRefreshChartDataVC.h"
#import "AAChartKit.h"

#define AAColorWithRGB(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define AAGrayColor             [UIColor colorWithRed:245/255.0 green:246/255.0 blue:247/255.0 alpha:1.0]
#define AABlueColor             AAColorWithRGB(63, 153,231,1)

@interface OnlyRefreshChartDataVC ()<AAChartViewDidFinishLoadDelegate> {
    NSTimer *_timer;
    int myBasicValue;
}

@property (nonatomic, strong) CCChartModel *chartModel;
@property (nonatomic, strong) AAChartView  *chartView;

@end

@implementation OnlyRefreshChartDataVC

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    //取消定时器
    [_timer invalidate];
    _timer = nil;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"即时刷新数据";
    [self setUpTheView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self virtualUpdateTheChartViewDataInRealTime];
    });

}

- (void)setUpTheView {
    
    self.chartView = [[AAChartView alloc]initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height-60)];
    self.chartView.delegate = self;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.chartView];
    
    
    NSDictionary *gradientColorDic1 =
    @{
      @"type": @"linear",
      @"x": @0,
      @"y": @0,
      @"x2": @0,
      @"y2": @1,
      @"colorStops": @[@{
                           @"offset": @0, @"color": @"#8A2BE2" // 0% 处的颜色
                           }, @{
                           @"offset": @1, @"color": @"#1E90FF" // 100% 处的颜色
                           }],
      @"globalCoord": @false // 缺省为 false
      };
    
    NSDictionary *gradientColorDic2 =
    @{
      @"type": @"linear",
      @"x": @0,
      @"y": @0,
      @"x2": @0,
      @"y2": @1,
      @"colorStops": @[@{
                           @"offset": @0, @"color": @"rgba(220,20,60,1)"
                           }, @{
                           @"offset": @1, @"color":@"rgba(255,140,0,0.6)"
                           }],
      @"globalCoord": @false // 缺省为 false
      };

        NSMutableArray *xAxisDataArr = [NSMutableArray array];
        NSMutableArray *sinNumArr = [NSMutableArray array];
        NSMutableArray *sinNumArr2 = [NSMutableArray array];
    
        CGFloat y1 = 0.f;
        CGFloat y2 = 0.f;
        //第一个波纹的公式
        for (float x = 0.f; x <= 15 ; x++) {
            [xAxisDataArr addObject:@(x)];
            
            y1 = sin((10) * (x * M_PI / 180)) +x*2*0.01 ;
            [sinNumArr addObject:@(y1)];
            y2 =cos((10) * (x * M_PI / 180))+x*3*0.01;
            [sinNumArr2 addObject:@(y2)];
        }
    

    self.chartModel = CCChartModel.new
    .titleTextSet(@"堆叠区域图")
    .tooltipTriggerSet(@"axis")
    .legendDataSet(@[@"邮件营销",@"联盟广告",])
    .xAxisDataSet(xAxisDataArr)
    .colorSet(@[gradientColorDic1,gradientColorDic2]);

    NSArray *seriesArr;
    switch (self.chartType) {
        case 0: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.bar)
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.bar)
                          .dataSet(sinNumArr2),
                          ];
        }
        break;
        case 1: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .dataSet(sinNumArr2),
                          ];
        }
        break;
        
        case 2: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .smoothSet(YES)
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .smoothSet(YES)
                          .dataSet(sinNumArr2),
                          ];
        }
        break;
        
        case 3: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .stepSet(@"middle")
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .areaStyleSet(@{})
                          .stepSet(@"middle")
                          .dataSet(sinNumArr2),
                          ];
        }
        break;
        
        
        case 4: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .dataSet(sinNumArr2),
                          ];
        }
        break;

        
        case 5: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .smoothSet(YES)
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .smoothSet(YES)
                          .dataSet(sinNumArr2),
                          ];
        }
        break;

        case 6: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.line)
                          .stepSet(@"middle")
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.line)
                          .stepSet(@"middle")
                          .dataSet(sinNumArr2),
                          ];
        }
        break;

        case 7: {
            seriesArr = @[
                          CCSeriesElement.new
                          .nameSet(@"邮件营销")
                          .typeSet(CCChartType.scatter)
                          .dataSet(sinNumArr),
                          
                          CCSeriesElement.new
                          .nameSet(@"联盟广告")
                          .typeSet(CCChartType.scatter)
                          .dataSet(sinNumArr2),
                          ];
        }
        break;
        
        default:
        break;
    }
    
    self.chartModel.series = seriesArr;
    
    [self.chartView aa_drawChartWithChartModel:self.chartModel];
}


- (void)virtualUpdateTheChartViewDataInRealTime {
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerStartWork) userInfo:nil repeats:YES];
     [_timer fire];
}

- (void)timerStartWork{
    [self onlyRefreshTheChartData];
}

- (void)onlyRefreshTheChartData {

    NSMutableArray *sinNumArr = [[NSMutableArray alloc]init];
    NSMutableArray *sinNumArr2 = [[NSMutableArray alloc]init];
    CGFloat y1 = 0.f;
    CGFloat y2 = 0.f;
    int Q = arc4random()%30;
    for (float x = myBasicValue; x <= myBasicValue + 15 ; x++) {
          //第一个波纹的公式
        y1 = sin((Q) * (x * M_PI / 180)) +x*2*0.01-1 ;
        [sinNumArr addObject:@(y1)];
          //第二个波纹的公式
        y2 =cos((Q) * (x * M_PI / 180))+x*3*0.01-1;
        [sinNumArr2 addObject:@(y2)];
    }
    myBasicValue = myBasicValue +1;
    if (myBasicValue == 32) {
        myBasicValue = 0;
    }
    
    
    [self.chartModel.series enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        CCSeriesElement *seriesElement = obj;
        if (idx == 0) {
            seriesElement.data = sinNumArr;
        } else {
            seriesElement.data = sinNumArr2;
        }
    }];
    
    [self.chartView aa_refreshChartWithChartModel:self.chartModel];
    NSLog(@"Updated the chart data content!!! ☺️☺️☺️");
}

# pragma mark AAChartViewDidFinishLoadDelegate
- (void)AAChartViewDidFinishLoad {
    NSLog(@"AAChartView 内容已加载完成");
}

@end
