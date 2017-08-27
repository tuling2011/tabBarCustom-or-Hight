//
//  CustomTopView.m
//  dorayo
//
//  Created by xuetaowang on 16/12/11.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "CustomTopView.h"

@implementation CustomTopView

-(id)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = RGB(250, 250, 250);
        UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(10, 33, 22, 20)];
        [btn setBackgroundImage:[UIImage imageNamed:@"cancelBtn"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        UILabel *title = [[UILabel alloc]init];
        title.backgroundColor = [UIColor redColor];
        title.textAlignment = NSTextAlignmentCenter;
        title.center = CGPointMake(frame.size.width/2, (frame.size.height/2)+10);
        title.bounds = CGRectMake(0, 0, 100, 30);
        title.text = @"Dorayo";
        title.font = [UIFont systemFontOfSize:19];
        title.textColor = [UIColor blackColor];
        [self addSubview:title];
        
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, frame.size.height-1, screenW, 1)];
        line.backgroundColor = RGB(200, 200, 200);
        [self addSubview:line];
        
        
    }
    return self;
}

-(void)back{

    if ([self.delegate respondsToSelector:@selector(backButton)]) {
        [self.delegate backButton];
    }

}


@end
