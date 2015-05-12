//
//  ViewController.m
//  TYWaveProgressDemo
//
//  Created by tanyang on 15/4/15.
//  Copyright (c) 2015年 tanyang. All rights reserved.
//

#import "ViewController.h"
#import "TYWaveProgressView.h"

@interface ViewController ()
@property (nonatomic, weak) TYWaveProgressView *waveProgressView1;
@property (nonatomic, weak) TYWaveProgressView *waveProgressView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addWaveProgressView1];

    [self addWaveProgressView2];
}

- (void)addWaveProgressView1
{
    TYWaveProgressView *waveProgressView = [[TYWaveProgressView alloc]initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 180)/2, 44, 180, 180)];
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
    waveProgressView.numberLabel.text = @"80";
    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
    waveProgressView.unitLabel.text = @"%";
    waveProgressView.unitLabel.font = [UIFont boldSystemFontOfSize:20];
    waveProgressView.unitLabel.textColor = [UIColor whiteColor];
    waveProgressView.explainLabel.text = @"电量";
    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    
    waveProgressView.percent = 0.8;
    [self.view addSubview:waveProgressView];
    _waveProgressView1 = waveProgressView;
    [_waveProgressView1 startWave];
}

- (void)addWaveProgressView2
{
    TYWaveProgressView *waveProgressView = [[TYWaveProgressView alloc]initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame) - 180)/2, 300, 180, 180)];
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
    waveProgressView.numberLabel.text = @"68";
    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
    waveProgressView.explainLabel.text = @"血糖";
    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    
    waveProgressView.percent = 0.68;
    [self.view addSubview:waveProgressView];
    _waveProgressView2 = waveProgressView;
    [_waveProgressView2 startWave];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
