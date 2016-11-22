//
//  ScanningView.h
//  J1health
//
//  Created by zhizi on 16/3/15.
//  Copyright © 2016年 J1. All rights reserved.
//

#import <UIKit/UIKit.h>
//typedef void(^BlockMyErWeiMa)();
@interface ScanningView : UIView
@property (nonatomic, strong)UIImageView *lineImage;   //扫描黄色的线
//@property (strong,nonatomic)BlockMyErWeiMa blockMyErWeiMa;//点击我的二维码
@property (nonatomic,strong)UIView *upView;
@property (nonatomic,strong)UIView *leftView;
@property (nonatomic,strong)UIView *downView;
@property (nonatomic,strong)UIView *rightView;
@property (nonatomic,strong)UILabel *labelTitle;

- (void)hiddenSubviews:(BOOL)hidden;

@end
