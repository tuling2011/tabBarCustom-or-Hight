//
//  TabBar.m
//  dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "TabBar.h"
#import "ViewController.h"
@interface TabBar ()

@property(nonatomic,weak)UIButton *bigBt;

@end


@implementation TabBar

@dynamic delegate;

-(instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    if (self) {
        UIButton *plusBt = [[UIButton alloc]init];
        [plusBt setBackgroundImage:[UIImage imageNamed:@"加号背景"] forState:UIControlStateNormal];
        [plusBt setImage:[UIImage imageNamed:@"加号"] forState:UIControlStateNormal];
        [plusBt addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:plusBt];
        self.bigBt = plusBt;
        
    
    }
    return self;

}

-(void)add{

    NSLog(@"点击了加号");
    if ([self.delegate respondsToSelector:@selector(tabBarPlusButton)]) {
        [self.delegate tabBarPlusButton];
    }
}

-(void)layoutSubviews{

    [super layoutSubviews];

    self.bigBt.bounds =CGRectMake(0, 0, self.bigBt.currentBackgroundImage.size.width, self.bigBt.currentBackgroundImage.size.height);
    self.bigBt.center = CGPointMake(self.frame.size.width *0.5, self.frame.size.height * 0.5);
    
    
    
    
//    self.bigBt.center = CGPointMake(self.frame.size.width *0.5, self.frame.size.height * 0.5-20);
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"发布";
//    label.font = [UIFont systemFontOfSize:11];
//    [label sizeToFit];
//    label.textColor = [UIColor grayColor];
//    label.userInteractionEnabled=YES;
//    UITapGestureRecognizer *labelTapGestureRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(labelTouchUpInside:)];
//    [label addGestureRecognizer:labelTapGestureRecognizer];
//    [self addSubview:label];
//    label.centerX = self.bigBt.centerX;
//    label.centerY = CGRectGetMaxY(self.bigBt.frame) +15 ;
    

    
    CGFloat tabBarBtW = self.frame.size.width/5;
    CGFloat tabBarBtIndex = 0;
    
    for (UIView *child in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([child isKindOfClass:class]) {
            child.x = tabBarBtIndex * tabBarBtW;
            child.width = tabBarBtW;
            tabBarBtIndex ++;
            if (tabBarBtIndex == 2) {
                tabBarBtIndex ++;
            }
        }
    }
    
 
}

-(void) labelTouchUpInside:(UITapGestureRecognizer *)recognizer{
    
    if ([self.delegate respondsToSelector:@selector(tabBarPlusButton)]) {
        [self.delegate tabBarPlusButton];
    }
    
    
    
}
//重写hitTest方法，去监听发布按钮的点击，目的是为了让凸出的部分点击也有反应
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    //这一个判断是关键，不判断的话push到其他页面，点击发布按钮的位置也是会有反应的，这样就不好了
    //self.isHidden == NO 说明当前页面是有tabbar的，那么肯定是在导航控制器的根控制器页面
    //在导航控制器根控制器页面，那么我们就需要判断手指点击的位置是否在发布按钮身上
    //是的话让发布按钮自己处理点击事件，不是的话让系统去处理点击事件就可以了
    if (self.isHidden == NO) {
        
        //将当前tabbar的触摸点转换坐标系，转换到发布按钮的身上，生成一个新的点
        CGPoint newP = [self convertPoint:point toView:self.bigBt];
        
        //判断如果这个新的点是在发布按钮身上，那么处理点击事件最合适的view就是发布按钮
        if ( [self.bigBt pointInside:newP withEvent:event]) {
            return self.bigBt;
        }else{//如果点不在发布按钮身上，直接让系统处理就可以了
            
            return [super hitTest:point withEvent:event];
        }
    }
    
    else {//tabbar隐藏了，那么说明已经push到其他的页面了，这个时候还是让系统去判断最合适的view处理就好了
        return [super hitTest:point withEvent:event];
    }
}

@end
