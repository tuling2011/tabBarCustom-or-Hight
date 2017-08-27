//
//  CustomFootView.m
//  dorayo
//
//  Created by xuetaowang on 16/12/11.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "CustomFootView.h"

@implementation CustomFootView

-(instancetype)initWithFrame:(CGRect)frame{
     self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = RGB(250, 250, 250);
        UIButton *bt = [[UIButton alloc]init];
        bt.center = CGPointMake(frame.size.width/2, frame.size.height/2);
        bt.bounds = CGRectMake(0, 0, 30, 30);
        [bt setBackgroundImage:[UIImage imageNamed:@"cancelBtn"] forState:UIControlStateNormal];
        [bt addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:bt];
    
    }
    return self;

}

-(void)back{

    if ([self.delegate respondsToSelector:@selector(BackButton)]) {
        [self.delegate BackButton];
    }

}
@end
