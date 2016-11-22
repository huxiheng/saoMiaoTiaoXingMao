//
//  LoadCapturePreView.m
//  XieshiPrivate
//
//  Created by Tesiro on 16/10/25.
//  Copyright © 2016年 Lessu. All rights reserved.
//

#import "LoadCapturePreView.h"

@interface LoadCapturePreView ()
@property (nonatomic, strong) UIActivityIndicatorView *myActivityIndicatorView;
@property (nonatomic, strong) UILabel *loadingLabel;
@end
#define DeviceHeight self.frame.size.height
#define DeviceWidth self.frame.size.width
@implementation LoadCapturePreView

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setSubViews];
    }
    return self;
}

-(void)setSubViews{
    self.backgroundColor = [UIColor blackColor];
    
    self.loadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, (DeviceHeight-64)/2 +10 , DeviceWidth, 20)];
    self.loadingLabel.text =@"加载中...";
    self.loadingLabel.textAlignment =NSTextAlignmentCenter;
    self.loadingLabel.font =[UIFont systemFontOfSize:14];
    self.loadingLabel.textColor =[UIColor whiteColor];
    [self addSubview:self.loadingLabel];
    
    self.myActivityIndicatorView =[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(DeviceWidth/2-20, (DeviceHeight-64)/2 -40, 40, 40)];
    self.myActivityIndicatorView.activityIndicatorViewStyle =UIActivityIndicatorViewStyleWhiteLarge;
    [self addSubview:self.myActivityIndicatorView];
}
- (void)startLoading {
    [self.myActivityIndicatorView startAnimating];
}
- (void)stopLoading {
    [self.myActivityIndicatorView stopAnimating];
}

@end
