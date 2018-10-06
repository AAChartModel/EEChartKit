//
//  ViewController.m
//  AAChartKit
//
//  Created by An An on 17/3/13.
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
 * ❤❤❤❤❤❤   WARM TIPS!!!   ❤❤❤❤❤❤
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

#import "SecondViewController.h"
#import "AAChartKit.h"
#import "CCOptionsComposer.h"

@interface SecondViewController ()<AAChartViewDidFinishLoadDelegate>

@property (nonatomic, strong) CCChartModel *ccChartModel;
@property (nonatomic, strong) AAChartView  *aaChartView;

@end

@implementation SecondViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [self colorWithHexString:@"#ffffff"];
    
    
  

    
    [self setUpTheSegmentedControls];
    [self setUpTheSwitchs];
    
    AAChartType chartType;
    switch (self.chartType) {
        case 0:
        case 1:
            chartType = CCChartType.bar;
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            chartType = CCChartType.line;
            break;
        case 8:
            chartType = CCChartType.scatter;
            break;
        default:
            break;
    }
    
    self.title = [NSString stringWithFormat:@"%@ chart",chartType];
    
    [self setUpTheAAChartViewWithChartType:chartType];
    
}

- (void)setUpTheAAChartViewWithChartType:(AAChartType)chartType {
    
    CGFloat chartViewWidth  = self.view.frame.size.width;
    CGFloat chartViewHeight = self.view.frame.size.height-220;
    self.aaChartView = [[AAChartView alloc]init];
    self.aaChartView.frame = CGRectMake(0, 60, chartViewWidth, chartViewHeight);
    self.aaChartView.delegate = self;
    self.aaChartView.scrollEnabled = NO;//禁用 AAChartView 滚动效果
//    设置aaChartVie 的内容高度(content height)
//    self.aaChartView.contentHeight = chartViewHeight*2;
//    设置aaChartVie 的内容宽度(content  width)
//    self.aaChartView.contentWidth = chartViewWidth*2;
    [self.view addSubview:self.aaChartView];
    
    
//    //设置 AAChartView 的背景色是否为透明
//    self.aaChartView.isClearBackgroundColor = YES;
    
//

   CCChartModel *ccChartModel = [self configrueTheChartModel];
    self.ccChartModel = ccChartModel;
    
    [self.aaChartView aa_drawChartWithChartModel:ccChartModel];
}

- (CCChartModel *)configrueTheChartModel {
    CCChartModel *ccChartModel;
    switch (self.chartType) {
        case 0: {
            ccChartModel = CCChartModel.new
            .titleTextSet(@"世界人口总量")
            .titleSubtextSet(@"数据来自于网络")
            .tooltipTriggerSet(@"axis")
            .legendDataSet(@[@"2010年",@"2012年"])
            .xAxisTypeSet(@"value")
            .yAxisTypeSet(@"category")
            .yAxisDataSet(@[@"巴西🇧🇷",@"印尼🇮🇩",@"美国🇺🇸",@"印度🇮🇳",@"中国🇨🇳",@"世界🌍人口(万)",])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"2011年")
                         .typeSet(CCChartType.bar)
                         .dataSet(@[@18203, @23489, @29034, @104970, @131744, @630230]),
                         
                         CCSeriesElement.new
                         .nameSet(@"2012年")
                         .typeSet(CCChartType.bar)
                         .dataSet(@[@19325, @23438, @31000, @121594, @134141, @681807]),
                         ]);
            }
            break;
            
        case 1: {
            ccChartModel = CCChartModel.new
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
        }
            break;
            
        case 2: {
            ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
            .xAxisDataSet(@[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .dataSet(@[@7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3, @18.3, @13.9, @9.6]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .dataSet(@[@0.2, @0.8, @5.7, @11.3, @17.0, @22.0, @24.8, @24.1, @20.1, @14.1, @8.6, @2.5]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .dataSet(@[@0.1, @0.6, @3.5, @8.4, @13.5, @17.0, @18.6, @17.9, @14.3, @9.0, @3.9, @1.0]),
                         
                         CCSeriesElement.new
                         .nameSet(@"直接访问")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .dataSet(@[@3.9, @4.2, @5.7, @8.5, @11.9, @15.2, @17.0, @16.6, @14.2, @10.3, @6.6, @4.8]),
                         
                         ]);
            
        }
            break;
            
        case 3: {
            ccChartModel = CCChartModel.new
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
            
        }
            break;
            
        case 4: {
            ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",])
            .xAxisDataSet(@[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .stepSet(@"middle")
                         .dataSet(@[@149.9, @171.5, @106.4, @129.2, @144.0, @176.0, @135.6, @188.5, @276.4, @214.1, @95.6, @54.4]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .stepSet(@"middle")
                         .dataSet(@[@83.6, @78.8, @188.5, @93.4, @106.0, @84.5, @105.0, @104.3, @131.2, @153.5, @226.6, @192.3]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.line)
                         .areaStyleSet(@{})
                         .stepSet(@"middle")
                         .dataSet(@[@48.9, @38.8, @19.3, @41.4, @47.0, @28.3, @59.0, @69.6, @52.4, @65.2, @53.3, @72.2]),
                         ]);
            
        }
            break;
            
        case 5: {
            ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
            .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.line)
                         .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.line)
                         .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.line)
                         .dataSet(@[@150, @232, @201, @154, @190, @330, @410]),
                         
                         CCSeriesElement.new
                         .nameSet(@"直接访问")
                         .typeSet(CCChartType.line)
                         .dataSet(@[@320, @332, @301, @334, @390, @330, @320]),
                         
                         ]);
            
        }
            break;
            
        case 6: {
            ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
            .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.line)
                         .smoothSet(YES)
                         .dataSet(@[@0.45, @0.43, @0.50, @0.55, @0.58, @0.62, @0.83, @0.39, @0.56, @0.67, @0.50, @0.34, @0.50, @0.67, @0.58, @0.29, @0.46, @0.23, @0.47, @0.46, @0.38, @0.56, @0.48, @0.36]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.line)
                         .smoothSet(YES)
                         .dataSet(@[@0.38, @0.31, @0.32, @0.32, @0.64, @0.66, @0.86, @0.47, @0.52, @0.75, @0.52, @0.56, @0.54, @0.60, @0.46, @0.63, @0.54, @0.51, @0.58, @0.64, @0.60, @0.45, @0.36, @0.67]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.line)
                         .smoothSet(YES)
                         .dataSet(@[@0.46, @0.32, @0.53, @0.58, @0.86, @0.68, @0.85, @0.73, @0.69, @0.71, @0.91, @0.74, @0.60, @0.50, @0.39, @0.67, @0.55, @0.49, @0.65, @0.45, @0.64, @0.47, @0.63, @0.64]),
                         
                         CCSeriesElement.new
                         .nameSet(@"直接访问")
                         .typeSet(CCChartType.line)
                         .smoothSet(YES)
                         .dataSet(@[@0.60, @0.51, @0.52, @0.53, @0.64, @0.84, @0.65, @0.68, @0.63, @0.47, @0.72, @0.60, @0.65, @0.74, @0.66, @0.65, @0.71, @0.59, @0.65, @0.77, @0.52, @0.53, @0.58, @0.53]),
                         
                         ]);
            
        }
            break;
            
        case 7: {
          ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",])
            .xAxisDataSet(@[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.line)
                         .stepSet(@"middle")
                         .dataSet(@[@149.9, @171.5, @106.4, @129.2, @144.0, @176.0, @135.6, @188.5, @276.4, @214.1, @95.6, @54.4]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.line)
                         .stepSet(@"middle")
                         .dataSet(@[@83.6, @78.8, @188.5, @93.4, @106.0, @84.5, @105.0, @104.3, @131.2, @153.5, @226.6, @192.3]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.line)
                         .stepSet(@"middle")
                         .dataSet(@[@48.9, @38.8, @19.3, @41.4, @47.0, @28.3, @59.0, @69.6, @52.4, @65.2, @53.3, @72.2]),
                         ]);
            
        }
            break;
            
        case 8: {
           ccChartModel = CCChartModel.new
            .titleTextSet(@"堆叠区域图")
            .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",])
            .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
            .seriesSet(@[
                         CCSeriesElement.new
                         .nameSet(@"邮件营销")
                         .typeSet(CCChartType.scatter)
                         .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                         
                         CCSeriesElement.new
                         .nameSet(@"联盟广告")
                         .typeSet(CCChartType.scatter)
                         .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                         
                         CCSeriesElement.new
                         .nameSet(@"视频广告")
                         .typeSet(CCChartType.scatter)
                         .dataSet(@[@150, @232, @201, @154, @190, @330, @410]),
                         
                         CCSeriesElement.new
                         .nameSet(@"直接访问")
                         .typeSet(CCChartType.scatter)
                         .dataSet(@[@320, @332, @301, @334, @390, @330, @320]),
                         
                         ]);
            
        }
            break;




            
        default:
            break;
    }
    return ccChartModel;
}



#pragma mark -- AAChartView delegate
- (void)AAChartViewDidFinishLoad {
    NSLog(@"🔥🔥🔥🔥🔥 AAChartView content did finish load!!!");
}

- (void)setUpTheSegmentedControls{
    
    NSArray *segmentedArray;
    NSArray *typeLabelNameArr;
    
    if (self.chartType == SecondeViewControllerChartTypeColumn
        ||self.chartType == SecondeViewControllerChartTypeBar) {
        segmentedArray = @[@[@"No stacking",
                             @"Normal stacking",
                             @"Percent stacking"],
                           @[@"Square corners",
                             @"Rounded corners",
                             @"Wedge"],
                           ];
        typeLabelNameArr = @[@"Stacking type selection",
                             @"Corners Style type selection"];
    } else {
        segmentedArray = @[@[@"No stacking",
                             @"Normal stacking",
                             @"Percent stacking"],
                           @[CCChartSymbolType.circle,
                             CCChartSymbolType.rect,
                             CCChartSymbolType.roundRect,
                             CCChartSymbolType.triangle,
                             CCChartSymbolType.diamond,
//                             CCChartSymbolType.pin,
//                             CCChartSymbolType.arrow
                             ]
                           ];
        typeLabelNameArr = @[@"Stacking type selection",
                             @"Chart symbol type selection"];
    }
    
    for (int i=0; i<segmentedArray.count; i++) {
        
        UISegmentedControl * segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray[i]];
        segmentedControl.frame = CGRectMake(20, 40*i+(self.view.frame.size.height-145), self.view.frame.size.width-40, 20);
        segmentedControl.tintColor = [UIColor redColor];
//        segmentedControl.tintColor = [UIColor lightGrayColor];
        segmentedControl.selectedSegmentIndex = 0;
        segmentedControl.tag = i;
        [segmentedControl addTarget:self action:@selector(customsegmentedControlCellValueBeChanged:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:segmentedControl];
        
        UILabel *typeLabel = [[UILabel alloc]init];
        typeLabel.textColor = [UIColor lightGrayColor];
        typeLabel.frame =CGRectMake(20, 40*i+(self.view.frame.size.height-165), self.view.frame.size.width-40, 20);
        typeLabel.text = typeLabelNameArr[i];
        typeLabel.font = [UIFont systemFontOfSize:11.0f];
        [self.view addSubview:typeLabel];
        
    }
}

- (void)customsegmentedControlCellValueBeChanged:(UISegmentedControl *)segmentedControl {
    switch (segmentedControl.tag) {
        case 0: {
            NSArray *stackingArr = @[AAChartStackingTypeFalse,
                                     AAChartStackingTypeNormal,
                                     AAChartStackingTypePercent];
//            self.aaChartModel.stacking = stackingArr[segmentedControl.selectedSegmentIndex];
        }
            break;
            
        case 1: {
            
            if (self.chartType == 0 || self.chartType == 1 ) {
                NSArray *borderRadiusArr = @[ @0, @4, @100 ];
//                barBorderRadius
                NSNumber *barBorderRadius = borderRadiusArr[segmentedControl.selectedSegmentIndex];;
                NSDictionary *itemStyle = @{@"barBorderRadius":barBorderRadius};
                NSArray *seriesArr = self.ccChartModel.series;
                [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    CCSeriesElement *seriesElement = obj;
                    seriesElement.itemStyle = itemStyle;
                }];
//                self.aaChartModel.borderRadius = borderRadiusArr[segmentedControl.selectedSegmentIndex];
            } else {
                
                NSArray *symbolArr = @[CCChartSymbolType.circle,
                                       CCChartSymbolType.rect,
                                       CCChartSymbolType.roundRect,
                                       CCChartSymbolType.triangle,
                                       CCChartSymbolType.diamond,
//                                       CCChartSymbolType.pin,
//                                       CCChartSymbolType.arrow
                                       ];
                NSArray *seriesArr = self.ccChartModel.series;
                [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    CCSeriesElement *seriesElement = obj;
                    seriesElement.symbol = symbolArr[segmentedControl.selectedSegmentIndex];
                }];
//                self.aaChartModel.symbol = symbolArr[segmentedControl.selectedSegmentIndex];
            }
        }
            break;
            
        default:
            break;
    }
    
    [self refreshTheChartView];
}

- (void)refreshTheChartView {
    //    self.aaChartModel.colorsTheme = [self configureTheRandomColorArray];//random colors theme, Just for fun!!!
    [self.aaChartView aa_refreshChartWithChartModel:self.ccChartModel];
}

- (void)setUpTheSwitchs {
    NSArray *nameArr;
    if (self.chartType == SecondeViewControllerChartTypeColumn
        ||self.chartType == SecondeViewControllerChartTypeBar) {
        nameArr = @[@"xAxisReversed",
                    @"yAxisReversed",
                    @"xAxisInverted",
                    @"Polarization",
                    @"DataLabelShow",];
    } else {
        nameArr = @[@"xReversed",
                    @"yReversed",
                    @"xAxisInverted",
                    @"Polarization",
                    @"DataShow",
                    @"HideMarker"];
    }
    
    CGFloat switchWidth = (self.view.frame.size.width-40)/nameArr.count;
    
    for (int i=0; i<nameArr.count; i++) {
        
        UISwitch * switchView = [[UISwitch alloc]init];
        switchView.frame = CGRectMake(switchWidth*i+20, self.view.frame.size.height-70, switchWidth, 20);
        //        switchView.backgroundColor = [UIColor blueColor];
//        switchView.onTintColor = [UIColor colorWithRed:0/255 green:191/255 blue:255/255 alpha:0.6];
        switchView.onTintColor = [self colorWithHexString:@"#FFDEAD"];
        switchView.thumbTintColor = [UIColor whiteColor];
        switchView.on = NO;
        switchView.tag = i;
        [switchView addTarget:self action:@selector(switchViewClicked:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:switchView];
        
        UILabel *label = [[UILabel alloc]init];
        label.textColor = [UIColor lightGrayColor];
        label.numberOfLines = 0;
        label.frame = CGRectMake(switchWidth*i+20,  self.view.frame.size.height-40, switchWidth, 40);
        label.text = nameArr[i];
        label.font = [UIFont systemFontOfSize:8.0f];
        [self.view addSubview:label];
    }
}

- (void)switchViewClicked:(UISwitch *)switchView {
    switch (switchView.tag) {
        case 0: {
            NSArray *seriesArr = self.ccChartModel.series;
            [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                CCSeriesElement *seriesElement = obj;
                seriesElement.stack = switchView.on ? (id)@{} : nil;
            }];
        }
            break;
        case 1: {
            if (switchView.on) {
                NSString *xAxisType = self.ccChartModel.xAxisType;
                NSString *yAxisType = self.ccChartModel.yAxisType;
                NSArray *xAxisData = self.ccChartModel.xAxisData;
                self.ccChartModel.xAxisType = yAxisType;
                self.ccChartModel.yAxisType = xAxisType;
                self.ccChartModel.yAxisData = xAxisData;
                self.ccChartModel.xAxisData = nil;
            } else {
                NSString *yAxisType = self.ccChartModel.yAxisType;
                NSString *xAxisType = self.ccChartModel.xAxisType;
                NSArray *yAxisData = self.ccChartModel.yAxisData;
                self.ccChartModel.yAxisType = xAxisType;
                self.ccChartModel.xAxisType = yAxisType;
                self.ccChartModel.xAxisData = yAxisData;
                self.ccChartModel.yAxisData = nil;
            }

        }
//            self.aaChartModel.yAxisReversed = switchView.on;
            break;
        case 2: 
            self.ccChartModel.polar = switchView.on ? @{} : nil;
            break;
        case 3: {
//            self.ccChartModel.polar = switchView.on ? @{} : nil;
//            NSArray *seriesArr = self.ccChartModel.series;
//            [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                CCSeriesElement *seriesElement = obj;
//                seriesElement.coordinateSystem = switchView.on ? @"polar" : nil;
//            }];
        }
//            self.aaChartModel.polar = switchView.on;
            break;
        case 4: {
            NSArray *seriesArr = self.ccChartModel.series;
            [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                CCSeriesElement *seriesElement = obj;
                seriesElement.label = switchView.on ? @{@"show":@YES} : nil;
            }];
        }
//            self.aaChartModel.dataLabelEnabled = switchView.on;
            break;
        case 5: {
            NSArray *seriesArr = self.ccChartModel.series;
            [seriesArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                CCSeriesElement *seriesElement = obj;
                seriesElement.symbolSize = switchView.on ? @0 : @13;
            }];
        }
//            self.aaChartModel.markerRadius = switchView.on ? @0 : @5;
            break;
        default:
            break;
    }

    [self refreshTheChartView];
    
}

- (UIColor *) colorWithHexString: (NSString *)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

@end
