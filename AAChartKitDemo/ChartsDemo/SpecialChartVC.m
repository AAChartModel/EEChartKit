
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

#import "SpecialChartVC.h"
#import "AAChartKit.h"


@interface SpecialChartVC ()

@property (nonatomic, strong) AAChartModel *aaChartModel;
@property (nonatomic, strong) AAChartView  *aaChartView;

@end

@implementation SpecialChartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AAChartType chartType;
    
    switch (self.chartType) {
        case SpecialChartVCChartTypeColorfulColumnChart:
            chartType = @"colorfulColumnChart";
            break;
        case SpecialChartVCChartTypeGradientColorBar:
            chartType = @"gradientColorBar";
            break;
        case SpecialChartVCChartTypeMixedLine:
            chartType = AAChartTypeLine;
            break;
        case SpecialChartVCChartTypeArea:
            chartType = AAChartTypeArea;
            break;
        case SpecialChartVCChartTypeAreaspline:
            chartType = AAChartTypeAreaspline;
            break;
        case SpecialChartVCChartTypePie:
            chartType = AAChartTypePie;
            break;
        case SpecialChartVCChartTypeBubble:
            chartType = AAChartTypeBubble;
            break;
        case SpecialChartVCChartTypeScatter:
            chartType = AAChartTypeScatter;
            break;
        case SpecialChartVCChartTypeArearange:
            chartType = AAChartTypeArearange;
            break;
        case SpecialChartVCChartTypeAreasplinerange:
            chartType = AAChartTypeAreasplinerange;
            break;
        case SpecialChartVCChartTypeColumnrange:
            chartType = AAChartTypeColumnrange;
            break;
        case SpecialChartVCChartTypeStepLine:
            chartType = @"stepLine";
            break;
        case SpecialChartVCChartTypeStepArea:
            chartType = @"stepArea";
            break;
        case SpecialChartVCChartTypeNightingaleRoseChart:
            chartType = @"NightingaleRoseChart";
            break;
        case SpecialChartVCChartTypeBoxplot:
            chartType = AAChartTypeBoxplot;
            break;
        case SpecialChartVCChartTypeWaterfall:
            chartType = AAChartTypeWaterfall;
            break;
        case SpecialChartVCChartTypePyramid:
            chartType = AAChartTypePyramid;
            break;
        case SpecialChartVCChartTypeFunnel:
            chartType = AAChartTypeFunnel;
            break;
            
        default:
            break;
    }
    
    self.title = [NSString stringWithFormat:@"%@ chart",chartType];
    
    [self configureTheChartView:chartType];
}

- (void)configureTheChartView:(AAChartType)chartType {
    
    self.aaChartView = [[AAChartView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.view.backgroundColor = [UIColor whiteColor];
    self.aaChartView.scrollEnabled = NO;
    self.aaChartView.contentHeight = self.aaChartView.frame.size.height-80;
    [self.view addSubview:self.aaChartView];
    
    CCChartModel *chartModel = [self configureTheChartModel:chartType];
//    self.aaChartModel.colorsTheme = [self configureTheRandomColorArray];
//    self.aaChartModel.colorsTheme = self.colors;

    
    [self.aaChartView aa_drawChartWithChartModel:chartModel];
}

- (NSArray *)configureTheRandomColorArrayWithColorNumber:(NSInteger)colorNumber {
    NSMutableArray *colorStringArr = [[NSMutableArray alloc]init];
    for (int i=0; i < colorNumber; i++) {
        int R = (arc4random() % 256) ;
        int G = (arc4random() % 256) ;
        int B = (arc4random() % 256) ;
        NSString *colorStr = [NSString stringWithFormat:@"rgba(%d,%d,%d,0.9)",R,G,B];
        [colorStringArr addObject:colorStr];
    }
    return colorStringArr;
}


- (CCChartModel *)configureTheChartModel:(NSString *)chartType {
    if ([chartType isEqualToString:@"colorfulColumnChart"]) {
        
       CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"世界人口总量")
        .titleSubtextSet(@"数据来自于网络")
        .tooltipTriggerSet(@"axis")
        .legendDataSet(@[@"利润", @"支出", @"收入"])
        .xAxisTypeSet(@"value")
        .yAxisTypeSet(@"category")
        .yAxisDataSet(@[@"周一", @"周二", @"周三", @"周四", @"周五", @"周六", @"周日"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"利润")
                     .typeSet(CCChartType.bar)
                     .dataSet(@[@200, @170, @240, @244, @200, @220, @210]),
                     
                     CCSeriesElement.new
                     .nameSet(@"收入")
                     .typeSet(CCChartType.bar)
                     .stackSet(@"总量")
                     .dataSet(@[@320, @302, @341, @374, @390, @450, @420]),
                     
                     CCSeriesElement.new
                     .nameSet(@"支出")
                     .typeSet(CCChartType.bar)
                     .stackSet(@"总量")
                     .dataSet(@[@(-120), @(-132), @(-101), @(-134), @(-190), @(-230), @(-210)]),
                     ]);
        
        return ccChartModel;
        
    } else if ([chartType isEqualToString:@"gradientColorBar"]) {
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
                               @"offset": @0, @"color": @"rgba(220,20,60,1)" // 0% 处的颜色
                               }, @{
                               @"offset": @1, @"color":  @"rgba(255,140,0,0.8)"// 100% 处的颜色
                               }],
          @"globalCoord": @false // 缺省为 false
          };
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"堆叠区域图")
        .tooltipTriggerSet(@"axis")
        .legendDataSet(@[@"邮件营销",@"联盟广告",])
        .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
        .colorSet(@[gradientColorDic1,gradientColorDic2])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.bar)
                     .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                     
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.bar)
                     .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                     ]);
        
        return chartModel;
    } else if ([chartType isEqualToString:AAChartTypeLine]) {
        
        CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"STEP LINE CHART")
        .titleSubtextSet(@"2020/08/08")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",])
        .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.line)
                     .smoothSet(YES)
                     .lineStyleSet(@{@"type":@"solid"})
                     .stackSet(@"总量")
                     .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                     
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.line)
                     .smoothSet(YES)
                     .lineStyleSet(@{@"type":@"dashed"})
                     .stackSet(@"总量")
                     .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                     
                     CCSeriesElement.new
                     .nameSet(@"视频广告")
                     .typeSet(CCChartType.line)
                     .smoothSet(YES)
                     .lineStyleSet(@{@"type":@"dotted"})
                     .stackSet(@"总量")
                     .dataSet(@[@450, @432, @401, @454, @590, @530, @510]),
                     
                     ]);
        return ccChartModel;
        
    }  else if ([chartType isEqualToString:AAChartTypeArea]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"黄昏别馆年均降水量")
        .tooltipTriggerSet(@"axis")
        .legendDataSet(@[@"降水量"])
        .xAxisDataSet(@[@"一月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月", @"九月", @"十月", @"十一月", @"十二月"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"2020")
                     .typeSet(CCChartType.bar)
                     .dataSet(@[@2.6, @5.9, @9.0, @26.4, @28.7, @70.7, @175.6, @182.2, @48.7, @18.8, @6.0, @2.3])
                     .markPointSet(@{
                                     @"data" :@[
                                             @{@"name" : @"年最高", @"value" : @182.2, @"xAxis": @7, @"yAxis": @183},
                                             @{@"name" : @"年最低", @"value" : @2.3, @"xAxis": @11, @"yAxis": @3}
                                             ]
                                     })
                     .markLineSet(@{
                                    @"data" : @[
                                            @{@"type" :@"average", @"name" : @"平均值"}
                                            ]
                                    })
                     ,
                     
                     
                     ]);
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeAreaspline]) {
        
        CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"带有负数的区域填充图")
        .titleSubtextSet(@"横屏查看效果更佳")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"])
        .xAxisDataSet(@[@"Java",@"Swift",@"Python",@"Ruby", @"PHP",
                        @"Go",@"C",@"C#",@"C++",@"HTML",@"CSS",@"Perl",])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .smoothSet(YES)
                     .dataSet(@[@0, @(-7.5), @(-1.0), @3.7, @0, @(-3), @8, @0,@(-3.6), @4, @(-2), @0]),
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .smoothSet(YES)
                     .dataSet(@[@0, @(-2.2), @2, @(-2.2), @0, @(-1.5), @0, @2.4, @(-1), @3, @(-1), @0]),
                     CCSeriesElement.new
                     .nameSet(@"视频广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .smoothSet(YES)
                     .dataSet(@[@0, @2.3, @0, @1.2, @(-1), @3, @0, @(-3.3), @0, @2, @(-0.3), @0]),
                     CCSeriesElement.new
                     .nameSet(@"直接访问")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .smoothSet(YES)
                     .dataSet(@[@0, @10, @0.13,@2,@0, @2, @0, @3.7, @0, @1, @(-3), @0]),
                     CCSeriesElement.new
                     .nameSet(@"搜索引擎")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .smoothSet(YES)
                     .dataSet(@[@0, @(-4.5), @(-0.9), @5.5, @(-1.9), @1.3, @(-2.8), @0, @(-1.7), @0, @3, @0, ]),
                     ]);
        
        return ccChartModel;
   
    }  else if ([chartType isEqualToString:AAChartTypePie]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"Customized Pie")
        .tooltipTriggerSet(@"item")
        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"访问来源")
                     .typeSet(CCChartType.pie)
                     .radiusSet(@"55%")
                     .dataSet(@[@{@"value":@310, @"name":@"邮件营销"},
                                @{@"value":@274, @"name":@"联盟广告"},
                                @{@"value":@235, @"name":@"视频广告"},
                                @{@"value":@335, @"name":@"直接访问"},
                                @{@"value":@400, @"name":@"搜索引擎"}])
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeBubble]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"嵌套环形图")
        .tooltipTriggerSet(@"item")
        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .legendDataSet(@[@"直达",@"营销广告",@"搜索引擎",@"邮件营销",@"联盟广告",@"视频广告",@"百度",@"谷歌",@"必应",@"其他"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"访问来源")
                     .typeSet(CCChartType.pie)
                     .radiusSet((id)@[@0,@"30%"])
                     .labelSet(@{@"normal":@{@"position":@"inner"}})
                     .dataSet(@[
                                @{@"value":@335, @"name":@"直达", },
                                @{@"value":@679, @"name":@"营销广告"},
                                @{@"value":@1548, @"name":@"搜索引擎"}
                                ]),
                     CCSeriesElement.new
                     .nameSet(@"访问来源")
                     .typeSet(CCChartType.pie)
                     .radiusSet((id)@[@"40%",@"55%"])
                     .dataSet(@[
                                @{@"value":@335, @"name":@"直达"},
                                @{@"value":@310, @"name":@"邮件营销"},
                                @{@"value":@234, @"name":@"联盟广告"},
                                @{@"value":@135, @"name":@"视频广告"},
                                @{@"value":@1048, @"name":@"百度"},
                                @{@"value":@251, @"name":@"谷歌"},
                                @{@"value":@147, @"name":@"必应"},
                                @{@"value":@102, @"name":@"其他"}
                                ]),
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeScatter]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"按性别划分的身高体重分布图")
//        .tooltipTriggerSet(@"item")
//        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"Male")
                     .typeSet(CCChartType.scatter)
                     .dataSet(@[
                                @[@161.2, @51.6], @[@167.5, @59.0], @[@159.5, @49.2], @[@157.0, @63.0], @[@155.8, @53.6],
                                @[@170.0, @59.0], @[@159.1, @47.6], @[@166.0, @69.8], @[@176.2, @66.8], @[@160.2, @75.2],
                                @[@172.5, @55.2], @[@170.9, @54.2], @[@172.9, @62.5], @[@153.4, @42.0], @[@160.0, @50.0],
                                @[@147.2, @49.8], @[@168.2, @49.2], @[@175.0, @73.2], @[@157.0, @47.8], @[@167.6, @68.8],
                                @[@159.5, @50.6], @[@175.0, @82.5], @[@166.8, @57.2], @[@176.5, @87.8], @[@170.2, @72.8],
                                @[@174.0, @54.5], @[@173.0, @59.8], @[@179.9, @67.3], @[@170.5, @67.8], @[@160.0, @47.0],
                                @[@154.4, @46.2], @[@162.0, @55.0], @[@176.5, @83.0], @[@160.0, @54.4], @[@152.0, @45.8],
                                @[@162.1, @53.6], @[@170.0, @73.2], @[@160.2, @52.1], @[@161.3, @67.9], @[@166.4, @56.6],
                                @[@168.9, @62.3], @[@163.8, @58.5], @[@167.6, @54.5], @[@160.0, @50.2], @[@161.3, @60.3],
                                @[@167.6, @58.3], @[@165.1, @56.2], @[@160.0, @50.2], @[@170.0, @72.9], @[@157.5, @59.8],
                                @[@167.6, @61.0], @[@160.7, @69.1], @[@163.2, @55.9], @[@152.4, @46.5], @[@157.5, @54.3],
                                @[@168.3, @54.8], @[@180.3, @60.7], @[@165.5, @60.0], @[@165.0, @62.0], @[@164.5, @60.3],
                                @[@156.0, @52.7], @[@160.0, @74.3], @[@163.0, @62.0], @[@165.7, @73.1], @[@161.0, @80.0],
                                @[@162.0, @54.7], @[@166.0, @53.2], @[@174.0, @75.7], @[@172.7, @61.1], @[@167.6, @55.7],
                                @[@151.1, @48.7], @[@164.5, @52.3], @[@163.5, @50.0], @[@152.0, @59.3], @[@169.0, @62.5],
                                @[@164.0, @55.7], @[@161.2, @54.8], @[@155.0, @45.9], @[@170.0, @70.6], @[@176.2, @67.2],
                                @[@170.0, @69.4], @[@162.5, @58.2], @[@170.3, @64.8], @[@164.1, @71.6], @[@169.5, @52.8],
                                @[@163.2, @59.8], @[@154.5, @49.0], @[@159.8, @50.0], @[@173.2, @69.2], @[@170.0, @55.9],
                                @[@161.4, @63.4], @[@169.0, @58.2], @[@166.2, @58.6], @[@159.4, @45.7], @[@162.5, @52.2],
                                @[@159.0, @48.6], @[@162.8, @57.8], @[@159.0, @55.6], @[@179.8, @66.8], @[@162.9, @59.4],
                                @[@161.0, @53.6], @[@151.1, @73.2], @[@168.2, @53.4], @[@168.9, @69.0], @[@173.2, @58.4],
                                @[@171.8, @56.2], @[@178.0, @70.6], @[@164.3, @59.8], @[@163.0, @72.0], @[@168.5, @65.2],
                                @[@166.8, @56.6], @[@172.7, @93.3], @[@163.5, @51.8], @[@169.4, @63.4], @[@167.8, @59.0],
                                @[@159.5, @47.6], @[@167.6, @63.0], @[@161.2, @55.2], @[@160.0, @45.0], @[@163.2, @54.0],
                                @[@162.2, @50.2], @[@161.3, @60.2], @[@149.5, @44.8], @[@157.5, @58.8], @[@163.2, @56.4],
                                @[@172.7, @62.0], @[@155.0, @49.2], @[@156.5, @67.2], @[@164.0, @53.8], @[@160.9, @54.4],
                                @[@162.8, @58.0], @[@167.0, @59.8], @[@160.0, @54.8], @[@160.0, @43.2], @[@168.9, @60.5],
                                @[@158.2, @46.4], @[@156.0, @64.4], @[@160.0, @48.8], @[@167.1, @62.2], @[@158.0, @55.5],
                                @[@167.6, @57.8], @[@156.0, @54.6], @[@162.1, @59.2], @[@173.4, @52.7], @[@159.8, @53.2],
                                @[@170.5, @64.5], @[@159.2, @51.8], @[@157.5, @56.0], @[@161.3, @63.6], @[@162.6, @63.2],
                                @[@160.0, @59.5], @[@168.9, @56.8], @[@165.1, @64.1], @[@162.6, @50.0], @[@165.1, @72.3],
                                @[@166.4, @55.0], @[@160.0, @55.9], @[@152.4, @60.4], @[@170.2, @69.1], @[@162.6, @84.5],
                                @[@170.2, @55.9], @[@158.8, @55.5], @[@172.7, @69.5], @[@167.6, @76.4], @[@162.6, @61.4],
                                @[@167.6, @65.9], @[@156.2, @58.6], @[@175.2, @66.8], @[@172.1, @56.6], @[@162.6, @58.6],
                                @[@160.0, @55.9], @[@165.1, @59.1], @[@182.9, @81.8], @[@166.4, @70.7], @[@165.1, @56.8],
                                @[@177.8, @60.0], @[@165.1, @58.2], @[@175.3, @72.7], @[@154.9, @54.1], @[@158.8, @49.1],
                                @[@172.7, @75.9], @[@168.9, @55.0], @[@161.3, @57.3], @[@167.6, @55.0], @[@165.1, @65.5],
                                @[@175.3, @65.5], @[@157.5, @48.6], @[@163.8, @58.6], @[@167.6, @63.6], @[@165.1, @55.2],
                                @[@165.1, @62.7], @[@168.9, @56.6], @[@162.6, @53.9], @[@164.5, @63.2], @[@176.5, @73.6],
                                @[@168.9, @62.0], @[@175.3, @63.6], @[@159.4, @53.2], @[@160.0, @53.4], @[@170.2, @55.0],
                                @[@162.6, @70.5], @[@167.6, @54.5], @[@162.6, @54.5], @[@160.7, @55.9], @[@160.0, @59.0],
                                @[@157.5, @63.6], @[@162.6, @54.5], @[@152.4, @47.3], @[@170.2, @67.7], @[@165.1, @80.9],
                                @[@172.7, @70.5], @[@165.1, @60.9], @[@170.2, @63.6], @[@170.2, @54.5], @[@170.2, @59.1],
                                @[@161.3, @70.5], @[@167.6, @52.7], @[@167.6, @62.7], @[@165.1, @86.3], @[@162.6, @66.4],
                                @[@152.4, @67.3], @[@168.9, @63.0], @[@170.2, @73.6], @[@175.2, @62.3], @[@175.2, @57.7],
                                @[@160.0, @55.4], @[@165.1, @94.4], @[@174.0, @55.5], @[@170.2, @77.3], @[@160.0, @80.5],
                                @[@167.6, @64.5], @[@167.6, @72.3], @[@167.6, @61.4], @[@154.9, @58.2], @[@162.6, @81.8],
                                @[@175.3, @63.6], @[@171.4, @53.4], @[@157.5, @54.5], @[@165.1, @53.6], @[@160.0, @60.0],
                                @[@174.0, @73.6], @[@162.6, @61.4], @[@174.0, @55.5], @[@162.6, @63.6], @[@161.3, @60.9],
                                @[@156.2, @60.0], @[@149.9, @46.8], @[@169.5, @57.3], @[@160.0, @64.1], @[@175.3, @63.6],
                                @[@169.5, @67.3], @[@160.0, @75.5], @[@172.7, @68.2], @[@162.6, @61.4], @[@157.5, @76.8],
                                @[@176.5, @71.8], @[@164.4, @55.5], @[@160.7, @48.6], @[@174.0, @66.4], @[@163.8, @67.3]
                                ]),
                     CCSeriesElement.new
                     .nameSet(@"Female")
                     .typeSet(CCChartType.scatter)
                     .dataSet(@[
                                @[@174.0, @65.6], @[@175.3, @71.8], @[@193.5, @80.7], @[@186.5, @72.6], @[@187.2, @78.8],
                                @[@181.5, @74.8], @[@184.0, @86.4], @[@184.5, @78.4], @[@175.0, @62.0], @[@184.0, @81.6],
                                @[@180.0, @76.6], @[@177.8, @83.6], @[@192.0, @90.0], @[@176.0, @74.6], @[@174.0, @71.0],
                                @[@184.0, @79.6], @[@192.7, @93.8], @[@171.5, @70.0], @[@173.0, @72.4], @[@176.0, @85.9],
                                @[@176.0, @78.8], @[@180.5, @77.8], @[@172.7, @66.2], @[@176.0, @86.4], @[@173.5, @81.8],
                                @[@178.0, @89.6], @[@180.3, @82.8], @[@180.3, @76.4], @[@164.5, @63.2], @[@173.0, @60.9],
                                @[@183.5, @74.8], @[@175.5, @70.0], @[@188.0, @72.4], @[@189.2, @84.1], @[@172.8, @69.1],
                                @[@170.0, @59.5], @[@182.0, @67.2], @[@170.0, @61.3], @[@177.8, @68.6], @[@184.2, @80.1],
                                @[@186.7, @87.8], @[@171.4, @84.7], @[@172.7, @73.4], @[@175.3, @72.1], @[@180.3, @82.6],
                                @[@182.9, @88.7], @[@188.0, @84.1], @[@177.2, @94.1], @[@172.1, @74.9], @[@167.0, @59.1],
                                @[@169.5, @75.6], @[@174.0, @86.2], @[@172.7, @75.3], @[@182.2, @87.1], @[@164.1, @55.2],
                                @[@163.0, @57.0], @[@171.5, @61.4], @[@184.2, @76.8], @[@174.0, @86.8], @[@174.0, @72.2],
                                @[@177.0, @71.6], @[@186.0, @84.8], @[@167.0, @68.2], @[@171.8, @66.1], @[@182.0, @72.0],
                                @[@167.0, @64.6], @[@177.8, @74.8], @[@164.5, @70.0], @[@192.0, @92.2], @[@175.5, @63.2],
                                @[@171.2, @79.1], @[@181.6, @78.9], @[@167.4, @67.7], @[@181.1, @66.0], @[@177.0, @68.2],
                                @[@174.5, @63.9], @[@177.5, @72.0], @[@170.5, @56.8], @[@182.4, @74.5], @[@197.1, @90.9],
                                @[@180.1, @93.0], @[@175.5, @80.9], @[@180.6, @72.7], @[@184.4, @68.0], @[@175.5, @70.9],
                                @[@180.6, @72.5], @[@177.0, @72.5], @[@177.1, @83.4], @[@181.6, @75.5], @[@176.5, @73.0],
                                @[@175.0, @70.2], @[@174.0, @73.4], @[@165.1, @70.5], @[@177.0, @68.9], @[@192.0, @99.9],
                                @[@176.5, @68.4], @[@169.4, @65.9], @[@182.1, @75.7], @[@179.8, @84.5], @[@175.3, @87.7],
                                @[@184.9, @86.4], @[@177.3, @73.2], @[@167.4, @53.9], @[@178.1, @72.0], @[@168.9, @55.5],
                                @[@157.2, @58.4], @[@180.3, @83.2], @[@170.2, @72.7], @[@177.8, @64.1], @[@172.7, @72.3],
                                @[@165.1, @65.0], @[@186.7, @86.4], @[@165.1, @65.0], @[@174.0, @88.6], @[@175.3, @84.1],
                                @[@185.4, @66.8], @[@177.8, @75.5], @[@180.3, @93.2], @[@180.3, @82.7], @[@177.8, @58.0],
                                @[@177.8, @79.5], @[@177.8, @78.6], @[@177.8, @71.8], @[@177.8, @116 ], @[@163.8, @72.2],
                                @[@188.0, @83.6], @[@198.1, @85.5], @[@175.3, @90.9], @[@166.4, @85.9], @[@190.5, @89.1],
                                @[@166.4, @75.0], @[@177.8, @77.7], @[@179.7, @86.4], @[@172.7, @90.9], @[@190.5, @73.6],
                                @[@185.4, @76.4], @[@168.9, @69.1], @[@167.6, @84.5], @[@175.3, @64.5], @[@170.2, @69.1],
                                @[@190.5, @96.6], @[@177.8, @86.4], @[@190.5, @80.9], @[@177.8, @87.7], @[@184.2, @94.5],
                                @[@176.5, @80.2], @[@177.8, @72.0], @[@180.3, @71.4], @[@171.4, @72.7], @[@172.7, @84.1],
                                @[@172.7, @76.8], @[@177.8, @63.6], @[@177.8, @80.9], @[@182.9, @80.9], @[@170.2, @85.5],
                                @[@167.6, @68.6], @[@175.3, @67.7], @[@165.1, @66.4], @[@185.4, @99.9], @[@181.6, @70.5],
                                @[@172.7, @95.9], @[@190.5, @84.1], @[@179.1, @87.3], @[@175.3, @71.8], @[@170.2, @65.9],
                                @[@193.0, @95.9], @[@171.4, @91.4], @[@177.8, @81.8], @[@177.8, @96.8], @[@167.6, @69.1],
                                @[@167.6, @82.7], @[@180.3, @75.5], @[@182.9, @79.5], @[@176.5, @73.6], @[@186.7, @91.8],
                                @[@188.0, @84.1], @[@188.0, @85.9], @[@177.8, @81.8], @[@174.0, @82.5], @[@177.8, @80.5],
                                @[@171.4, @70.0], @[@185.4, @81.8], @[@185.4, @84.1], @[@188.0, @90.5], @[@188.0, @91.4],
                                @[@182.9, @89.1], @[@176.5, @85.0], @[@175.3, @69.1], @[@175.3, @73.6], @[@188.0, @80.5],
                                @[@188.0, @82.7], @[@175.3, @86.4], @[@170.5, @67.7], @[@179.1, @92.7], @[@177.8, @93.6],
                                @[@175.3, @70.9], @[@182.9, @75.0], @[@170.8, @93.2], @[@188.0, @93.2], @[@180.3, @77.7],
                                @[@177.8, @61.4], @[@185.4, @94.1], @[@168.9, @75.0], @[@185.4, @83.6], @[@180.3, @85.5],
                                @[@174.0, @73.9], @[@167.6, @66.8], @[@182.9, @87.3], @[@160.0, @72.3], @[@180.3, @88.6],
                                @[@167.6, @75.5], @[@186.7, @95.5], @[@175.3, @91.1], @[@175.3, @67.3], @[@175.9, @77.7],
                                @[@175.3, @81.8], @[@179.1, @75.5], @[@181.6, @84.5], @[@177.8, @76.6], @[@182.9, @85.0],
                                @[@177.8, @98.8], @[@184.2, @77.3], @[@179.1, @71.8], @[@176.5, @87.9], @[@188.0, @94.3],
                                @[@174.0, @70.9], @[@167.6, @64.5], @[@170.2, @77.3], @[@167.6, @72.3], @[@188.0, @87.3],
                                @[@174.0, @80.0], @[@176.5, @82.3], @[@180.3, @73.6], @[@167.6, @74.1], @[@188.0, @85.9],
                                @[@180.3, @73.2], @[@167.6, @76.3], @[@183.0, @65.9], @[@183.0, @90.9], @[@179.1, @89.1],
                                @[@170.2, @62.3], @[@177.8, @82.7], @[@179.1, @79.1], @[@190.5, @98.2], @[@177.8, @84.1],
                                @[@180.3, @83.2], @[@180.3, @83.2]
                                ])
                     ])
        ;
        
        return chartModel;
        
    }  else if ([chartType isEqualToString:AAChartTypeArearange]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"Customized Pie")
        .tooltipTriggerSet(@"item")
        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"访问来源")
                     .typeSet(CCChartType.pie)
                     .radiusSet((id)@[@"40%",@"55%"])
                     .dataSet(@[@{@"value":@310, @"name":@"邮件营销"},
                                @{@"value":@274, @"name":@"联盟广告"},
                                @{@"value":@235, @"name":@"视频广告"},
                                @{@"value":@335, @"name":@"直接访问"},
                                @{@"value":@400, @"name":@"搜索引擎"}])
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeAreasplinerange]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"基础雷达图")
        .legendDataSet(@[@"预算分配（Allocated Budget）", @"实际开销（Actual Spending）"])
        .radarIndicatorSet(@[
                             @{ @"name": @"销售（sales）", @"max": @6500},
                             @{ @"name": @"管理（Administration）", @"max": @16000},
                             @{ @"name": @"信息技术（Information Techology）", @"max": @30000},
                             @{ @"name": @"客服（Customer Support）", @"max": @38000},
                             @{ @"name": @"研发（Development）", @"max": @52000},
                             @{ @"name": @"市场（Marketing）", @"max": @25000}
                             ])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"预算 vs 开销（Budget vs spending）")
                     .typeSet(CCChartType.radar)
                     .areaStyleSet(@{})
                     .dataSet(@[
                                @{
                                    @"value" : @[@4300, @10000, @28000, @35000, @50000, @19000],
                                    @"name" : @"预算分配（Allocated Budget）"
                                    },
                                @{
                                    @"value" : @[@5000, @14000, @28000, @31000, @42000, @21000],
                                    @"name" : @"实际开销（Actual Spending）"
                                    }
                                ])
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeColumnrange]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"AQI - 雷达图")
        .legendDataSet(@[@"北京",])
        .radarIndicatorSet(@[
                             @{@"name": @"AQI",   @"max": @300},
                             @{@"name": @"PM2.5", @"max": @250},
                             @{@"name": @"PM10",  @"max": @300},
                             @{@"name": @"CO",    @"max": @5  },
                             @{@"name": @"NO2",   @"max": @200},
                             @{@"name": @"SO2",   @"max": @100}
                             ])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"北京")
                     .typeSet(CCChartType.radar)
                     .symbolSet(@"none")
                     .itemStyleSet(@{@"normal": @{@"color": @"#F9713C"}})
                     .areaStyleSet(@{@"normal": @{@"opacity": @0.1}})
                     .dataSet(@[
                                @[@55,@9,@56,@0.46,@18,@6,@1],
                                @[@25,@11,@21,@0.65,@34,@9,@2],
                                @[@56,@7,@63,@0.3,@14,@5,@3],
                                @[@33,@7,@29,@0.33,@16,@6,@4],
                                @[@42,@24,@44,@0.76,@40,@16,@5],
                                @[@82,@58,@90,@1.77,@68,@33,@6],
                                @[@74,@49,@77,@1.46,@48,@27,@7],
                                @[@78,@55,@80,@1.29,@59,@29,@8],
                                @[@267,@216,@280,@4.8,@108,@64,@9],
                                @[@185,@127,@216,@2.52,@61,@27,@10],
                                @[@39,@19,@38,@0.57,@31,@15,@11],
                                @[@41,@11,@40,@0.43,@21,@7,@12],
                                @[@64,@38,@74,@1.04,@46,@22,@13],
                                @[@108,@79,@120,@1.7,@75,@41,@14],
                                @[@108,@63,@116,@1.48,@44,@26,@15],
                                @[@33,@6,@29,@0.34,@13,@5,@16],
                                @[@94,@66,@110,@1.54,@62,@31,@17],
                                @[@186,@142,@192,@3.88,@93,@79,@18],
                                @[@57,@31,@54,@0.96,@32,@14,@19],
                                @[@22,@8,@17,@0.48,@23,@10,@20],
                                @[@39,@15,@36,@0.61,@29,@13,@21],
                                @[@94,@69,@114,@2.08,@73,@39,@22],
                                @[@99,@73,@110,@2.43,@76,@48,@23],
                                @[@31,@12,@30,@0.5,@32,@16,@24],
                                @[@42,@27,@43,@1,@53,@22,@25],
                                @[@154,@117,@157,@3.05,@92,@58,@26],
                                @[@234,@185,@230,@4.09,@123,@69,@27],
                                @[@160,@120,@186,@2.77,@91,@50,@28],
                                @[@134,@96,@165,@2.76,@83,@41,@29],
                                @[@52,@24,@60,@1.03,@50,@21,@30],
                                @[@46,@5,@49,@0.28,@10,@6,@31]
                                ])
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:@"stepLine"]) {
        
        CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"STEP LINE CHART")
        .titleSubtextSet(@"2020/08/08")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",])
        .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.line)
                     .stepSet(@"left")//折线连接点靠左边👈
                     .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                     
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.line)
                     .stepSet(@"middle")//折线连接点居中
                     .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                     
                     CCSeriesElement.new
                     .nameSet(@"视频广告")
                     .typeSet(CCChartType.line)
                     .stepSet(@"right")//折线连接点靠右👉
                     .dataSet(@[@450, @432, @401, @454, @590, @530, @510]),
           
                     ]);
        
        return ccChartModel;
        
    } else if ([chartType isEqualToString:@"stepArea"]) {
        
        CCChartModel *ccChartModel = CCChartModel.new
        .titleTextSet(@"STEP LINE CHART")
        .titleSubtextSet(@"2020/08/08")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",])
        .xAxisDataSet(@[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"邮件营销")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet(@"总量")
                     .stepSet(@"left")//折线连接点靠左边👈
                     .dataSet(@[@120, @132, @101, @134, @90, @230, @210]),
                     
                     CCSeriesElement.new
                     .nameSet(@"联盟广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet(@"总量")
                     .stepSet(@"left")//折线连接点靠左边👈
                     .dataSet(@[@220, @182, @191, @234, @290, @330, @310]),
                     
                     CCSeriesElement.new
                     .nameSet(@"视频广告")
                     .typeSet(CCChartType.line)
                     .areaStyleSet(@{})
                     .stackSet(@"总量")
                     .stepSet(@"left")//折线连接点靠左边👈
                     .dataSet(@[@450, @432, @401, @454, @590, @530, @510]),
                     
                     ]);
        return ccChartModel;
        
    } else if ([chartType isEqualToString:@"NightingaleRoseChart"]) {
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"Customized Pie")
        .tooltipTriggerSet(@"item")
        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"访问来源")
                     .typeSet(CCChartType.pie)
                     .radiusSet(@"55%")
                     .centerSet(@[@"50%", @"50%"])
                     .dataSet(@[@{@"value":@310, @"name":@"邮件营销"},
                                @{@"value":@274, @"name":@"联盟广告"},
                                @{@"value":@235, @"name":@"视频广告"},
                                @{@"value":@335, @"name":@"直接访问"},
                                @{@"value":@400, @"name":@"搜索引擎"}])
                     .roseTypeSet(@"radius")
                     ])
        ;
        
        return chartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeBoxplot]) {

        AAChartModel *aaChartModel = AAObject(AAChartModel)
        .chartTypeSet(AAChartTypeBoxplot)
        .titleSet(@"BOXPLOT CHART")
        .subtitleSet(@"virtual data")
        .yAxisTitleSet(@"℃")
        .yAxisVisibleSet(true)
        .seriesSet(
                   @[
                     AAObject(AASeriesElement)
                     .nameSet(@"Observed Data")
                     .dataSet(@[
                                @[@760, @801, @848, @895, @965],
                                @[@733, @853, @939, @980, @1080],
                                @[@714, @762, @817, @870, @918],
                                @[@724, @802, @806, @871, @950],
                                @[@834, @836, @864, @882, @910]
                                ]),
                     ]
                   );
        
        
        
        return aaChartModel;
        
    } else if ([chartType isEqualToString:AAChartTypeWaterfall]) {
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"AQI - 雷达图")
        .legendDataSet(@[@"北京",@"上海",@"广州"])
        .legendSelectedModeSet(@"single")
        .radarIndicatorSet(@[
                             @{@"name": @"AQI",   @"max": @300},
                             @{@"name": @"PM2.5", @"max": @250},
                             @{@"name": @"PM10",  @"max": @300},
                             @{@"name": @"CO",    @"max": @5  },
                             @{@"name": @"NO2",   @"max": @200},
                             @{@"name": @"SO2",   @"max": @100}
                             ])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"北京")
                     .typeSet(CCChartType.radar)
                     .symbolSet(@"none")
                     .itemStyleSet(@{@"normal": @{@"color": @"#F9713C"}})
                     .areaStyleSet(@{@"normal": @{@"opacity": @0.1}})
                     .dataSet(@[
                                @[@55,@9,@56,@0.46,@18,@6,@1],
                                @[@25,@11,@21,@0.65,@34,@9,@2],
                                @[@56,@7,@63,@0.3,@14,@5,@3],
                                @[@33,@7,@29,@0.33,@16,@6,@4],
                                @[@42,@24,@44,@0.76,@40,@16,@5],
                                @[@82,@58,@90,@1.77,@68,@33,@6],
                                @[@74,@49,@77,@1.46,@48,@27,@7],
                                @[@78,@55,@80,@1.29,@59,@29,@8],
                                @[@267,@216,@280,@4.8,@108,@64,@9],
                                @[@185,@127,@216,@2.52,@61,@27,@10],
                                @[@39,@19,@38,@0.57,@31,@15,@11],
                                @[@41,@11,@40,@0.43,@21,@7,@12],
                                @[@64,@38,@74,@1.04,@46,@22,@13],
                                @[@108,@79,@120,@1.7,@75,@41,@14],
                                @[@108,@63,@116,@1.48,@44,@26,@15],
                                @[@33,@6,@29,@0.34,@13,@5,@16],
                                @[@94,@66,@110,@1.54,@62,@31,@17],
                                @[@186,@142,@192,@3.88,@93,@79,@18],
                                @[@57,@31,@54,@0.96,@32,@14,@19],
                                @[@22,@8,@17,@0.48,@23,@10,@20],
                                @[@39,@15,@36,@0.61,@29,@13,@21],
                                @[@94,@69,@114,@2.08,@73,@39,@22],
                                @[@99,@73,@110,@2.43,@76,@48,@23],
                                @[@31,@12,@30,@0.5,@32,@16,@24],
                                @[@42,@27,@43,@1,@53,@22,@25],
                                @[@154,@117,@157,@3.05,@92,@58,@26],
                                @[@234,@185,@230,@4.09,@123,@69,@27],
                                @[@160,@120,@186,@2.77,@91,@50,@28],
                                @[@134,@96,@165,@2.76,@83,@41,@29],
                                @[@52,@24,@60,@1.03,@50,@21,@30],
                                @[@46,@5,@49,@0.28,@10,@6,@31]
                                ]),
                     CCSeriesElement.new
                     .nameSet(@"上海")
                     .typeSet(CCChartType.radar)
                     .symbolSet(@"none")
                     .itemStyleSet(@{@"normal": @{@"color": @"#B3E4A1"}})
                     .areaStyleSet(@{@"normal": @{@"opacity": @0.1}})
                     .dataSet(@[
                                @[@91,@45,@125,@0.82,@34,@23,@1],
                                @[@65,@27,@78,@0.86,@45,@29,@2],
                                @[@83,@60,@84,@1.09,@73,@27,@3],
                                @[@109,@81,@121,@1.28,@68,@51,@4],
                                @[@106,@77,@114,@1.07,@55,@51,@5],
                                @[@109,@81,@121,@1.28,@68,@51,@6],
                                @[@106,@77,@114,@1.07,@55,@51,@7],
                                @[@89,@65,@78,@0.86,@51,@26,@8],
                                @[@53,@33,@47,@0.64,@50,@17,@9],
                                @[@80,@55,@80,@1.01,@75,@24,@10],
                                @[@117,@81,@124,@1.03,@45,@24,@11],
                                @[@99,@71,@142,@1.1,@62,@42,@12],
                                @[@95,@69,@130,@1.28,@74,@50,@13],
                                @[@116,@87,@131,@1.47,@84,@40,@14],
                                @[@108,@80,@121,@1.3,@85,@37,@15],
                                @[@134,@83,@167,@1.16,@57,@43,@16],
                                @[@79,@43,@107,@1.05,@59,@37,@17],
                                @[@71,@46,@89,@0.86,@64,@25,@18],
                                @[@97,@71,@113,@1.17,@88,@31,@19],
                                @[@84,@57,@91,@0.85,@55,@31,@20],
                                @[@87,@63,@101,@0.9,@56,@41,@21],
                                @[@104,@77,@119,@1.09,@73,@48,@22],
                                @[@87,@62,@100,@1,@72,@28,@23],
                                @[@168,@128,@172,@1.49,@97,@56,@24],
                                @[@65,@45,@51,@0.74,@39,@17,@25],
                                @[@39,@24,@38,@0.61,@47,@17,@26],
                                @[@39,@24,@39,@0.59,@50,@19,@27],
                                @[@93,@68,@96,@1.05,@79,@29,@28],
                                @[@188,@143,@197,@1.66,@99,@51,@29],
                                @[@174,@131,@174,@1.55,@108,@50,@30],
                                @[@187,@143,@201,@1.39,@89,@53,@31]
                                ]),
                     CCSeriesElement.new
                     .nameSet(@"广州")
                     .typeSet(CCChartType.radar)
                     .symbolSet(@"none")
                     .itemStyleSet(@{@"normal": @{@"color": @"rgb(238,197,102)"}})
                     .areaStyleSet(@{@"normal": @{@"opacity": @0.1}})
                     .dataSet(@[
                                @[@26,@37,@27,@1.163,@27,@13,@1],
                                @[@85,@62,@71,@1.195,@60,@8,@2],
                                @[@78,@38,@74,@1.363,@37,@7,@3],
                                @[@21,@21,@36,@0.634,@40,@9,@4],
                                @[@41,@42,@46,@0.915,@81,@13,@5],
                                @[@56,@52,@69,@1.067,@92,@16,@6],
                                @[@64,@30,@28,@0.924,@51,@2,@7],
                                @[@55,@48,@74,@1.236,@75,@26,@8],
                                @[@76,@85,@113,@1.237,@114,@27,@9],
                                @[@91,@81,@104,@1.041,@56,@40,@10],
                                @[@84,@39,@60,@0.964,@25,@11,@11],
                                @[@64,@51,@101,@0.862,@58,@23,@12],
                                @[@70,@69,@120,@1.198,@65,@36,@13],
                                @[@77,@105,@178,@2.549,@64,@16,@14],
                                @[@109,@68,@87,@0.996,@74,@29,@15],
                                @[@73,@68,@97,@0.905,@51,@34,@16],
                                @[@54,@27,@47,@0.592,@53,@12,@17],
                                @[@51,@61,@97,@0.811,@65,@19,@18],
                                @[@91,@71,@121,@1.374,@43,@18,@19],
                                @[@73,@102,@182,@2.787,@44,@19,@20],
                                @[@73,@50,@76,@0.717,@31,@20,@21],
                                @[@84,@94,@140,@2.238,@68,@18,@22],
                                @[@93,@77,@104,@1.165,@53,@7,@23],
                                @[@99,@130,@227,@3.97,@55,@15,@24],
                                @[@146,@84,@139,@1.094,@40,@17,@25],
                                @[@113,@108,@137,@1.481,@48,@15,@26],
                                @[@81,@48,@62,@1.619,@26,@3,@27],
                                @[@56,@48,@68,@1.336,@37,@9,@28],
                                @[@82,@92,@174,@3.29,@0,@13,@29],
                                @[@106,@116,@188,@3.628,@101,@16,@30],
                                @[@118,@50,@0,@1.383,@76,@11,@31]
                                ])
                     ])
        ;
        
        return chartModel;
     
    } else if ([chartType isEqualToString:AAChartTypePyramid]) {
        

        
    } else if ([chartType isEqualToString:AAChartTypeFunnel]) {
        
        CCChartModel *chartModel = CCChartModel.new
        .titleTextSet(@"Customized Funnel")
        .tooltipTriggerSet(@"item")
        .tooltipFormatterSet(@"{a} <br/>{b} : {c} ({d}%)")
        .legendDataSet(@[@"邮件营销",@"联盟广告",@"视频广告",@"直接访问",@"搜索引擎"])
        .seriesSet(@[
                     CCSeriesElement.new
                     .nameSet(@"漏斗图")
                     .typeSet(CCChartType.funnel)
                     .dataSet(@[@{@"value":@310, @"name":@"邮件营销"},
                                @{@"value":@274, @"name":@"联盟广告"},
                                @{@"value":@235, @"name":@"视频广告"},
                                @{@"value":@335, @"name":@"直接访问"},
                                @{@"value":@400, @"name":@"搜索引擎"}])
                     ])
        ;
        
        return chartModel;
        
    }
    
    return nil;
}

@end
