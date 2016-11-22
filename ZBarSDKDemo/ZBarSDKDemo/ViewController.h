//
//  ViewController.h
//  ZBarSDKDemo
//
//  Created by Tesiro on 16/11/22.
//  Copyright © 2016年 Tesiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface ViewController : UIViewController<ZBarReaderViewDelegate>
@property (nonatomic,strong)UILabel  *labelShow;

@end

