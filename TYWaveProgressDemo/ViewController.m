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
@property (nonatomic, weak) TYWaveProgressView *waveProgressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TYWaveProgressView *waveProgressView = [[TYWaveProgressView alloc]initWithFrame:CGRectMake(0, 0, 180, 180)];
    waveProgressView.center = self.view.center;
    waveProgressView.waveViewMargin = UIEdgeInsetsMake(15, 15, 20, 20);
    waveProgressView.backgroundImageView.image = [UIImage imageNamed:@"bg_tk_003"];
    waveProgressView.numberLabel.text = @"80";
    waveProgressView.numberLabel.font = [UIFont boldSystemFontOfSize:70];
    waveProgressView.numberLabel.textColor = [UIColor whiteColor];
    waveProgressView.unitLabel.text = @"%";
    waveProgressView.unitLabel.font = [UIFont boldSystemFontOfSize:20];
    waveProgressView.unitLabel.textColor = [UIColor whiteColor];
    waveProgressView.explainLabel.text = @"正确率";
    waveProgressView.explainLabel.font = [UIFont systemFontOfSize:20];
    waveProgressView.explainLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:waveProgressView];
    _waveProgressView = waveProgressView;
    [_waveProgressView startWave];

}

- (IBAction)doAgain:(id)sender {
    [_waveProgressView startWave];
    
    //[self performSelector:@selector(deleteWaveView) withObject:nil afterDelay:10];
}

- (void)deleteWaveView
{
    [_waveProgressView removeFromSuperview];
    _waveProgressView = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
