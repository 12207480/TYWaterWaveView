//
//  TYWaveProgressDemo.h
//  TYWaveProgressDemo
//
//  Created by tanyang on 15/4/14.
//  Copyright (c) 2015年 tanyang. All rights reserved.
//  自定义外观view

#import <UIKit/UIKit.h>

@interface TYWaveProgressView : UIView

@property (nonatomic, weak,readonly) UIImageView *backgroundImageView;

@property (nonatomic, weak,readonly) UILabel *numberLabel;

@property (nonatomic, weak,readonly) UILabel *unitLabel;

@property (nonatomic, weak,readonly) UILabel *explainLabel;

@property (nonatomic,assign) CGFloat percent; // 0~1

@property (nonatomic, assign) UIEdgeInsets  waveViewMargin;

- (void)startWave;

- (void)resetWave;

@end
