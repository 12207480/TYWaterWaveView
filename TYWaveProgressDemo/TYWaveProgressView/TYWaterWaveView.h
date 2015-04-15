//
//  KYWaterWaveView.h
//  TYWaveProgressDemo
//
//  Created by tanyang on 15/4/14.
//  Copyright (c) 2015 tanyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYWaterWaveView : UIView

@property (nonatomic, strong)   UIColor *firstWaveColor;    // 第一个波浪颜色
@property (nonatomic, strong)   UIColor *secondWaveColor;   // 第二个波浪颜色
@property (nonatomic, assign)   CGFloat percent;            // 百分比

-(void) wave;
-(void) stop;
-(void) reset;

@end
