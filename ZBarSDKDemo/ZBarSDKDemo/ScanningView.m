//
//  ScanningView.m
//  J1health
//
//  Created by zhizi on 16/3/15.
//  Copyright © 2016年 J1. All rights reserved.
//

#import "ScanningView.h"
@interface ScanningView()
@property (nonatomic, strong)UIImageView *imageSaoBJ;

@end
#define DeviceHeight self.frame.size.height
#define DeviceWidth self.frame.size.width
@implementation ScanningView

- (id)initWithFrame:(CGRect)frame {
    if (self =[super initWithFrame:frame]) {
        [self setsubviews];
    }
    return self;
}
- (void)setsubviews {
    self.backgroundColor =[UIColor clearColor];
    
    self.upView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, DeviceWidth, (90))];
    self.upView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    [self addSubview:self.upView];
    
    self.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, (90), (DeviceWidth-225)/2  , 225)];
    self.leftView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    [self addSubview:self.leftView];
    
    self.downView = [[UIView alloc] initWithFrame:CGRectMake(0, (90)+225       , DeviceWidth  , DeviceHeight-((90)+225))];
    self.downView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    [self addSubview:self.downView];
    
    self.rightView = [[UIView alloc] initWithFrame:CGRectMake(DeviceWidth-(DeviceWidth-225)/2, (90), (DeviceWidth-225)/2  , 225)];
    self.rightView.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
    [self addSubview:self.rightView];
    
    self.labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, DeviceWidth, 9)];
    self.labelTitle.font = [UIFont systemFontOfSize:9];
    self.labelTitle.textAlignment = NSTextAlignmentCenter;
    self.labelTitle.textColor = [UIColor whiteColor];
    self.labelTitle.text = @"将二维码对入取景框，即可自动扫描";
    [self.downView addSubview:self.labelTitle];
    
    self.imageSaoBJ = [[UIImageView alloc] initWithFrame:CGRectMake((DeviceWidth-225)/2, (90), 225, 225)];
    self.imageSaoBJ.image = [UIImage imageNamed:@"bg_scan_frame"];
    [self addSubview:self.imageSaoBJ];
    
    self.lineImage =[[UIImageView alloc] initWithFrame:CGRectMake((DeviceWidth-225)/2, (90), 225, 2)];
    self.lineImage.image =[UIImage imageNamed:@"smline"];
    self.lineImage.backgroundColor = [UIColor orangeColor];
    [self addSubview:self.lineImage];
    

}
- (void)hiddenSubviews:(BOOL)hidden {
    self.imageSaoBJ.hidden =hidden;
    self.lineImage.hidden =hidden;
    self.upView.hidden = hidden;
    self.downView.hidden = hidden;
    self.leftView.hidden = hidden;
    self.rightView.hidden = hidden;
}
- (void)bottonMyErWeiMaClicked:(UIButton *)btn{
//    if(self.blockMyErWeiMa){
//        self.blockMyErWeiMa();
//    }
}
@end
