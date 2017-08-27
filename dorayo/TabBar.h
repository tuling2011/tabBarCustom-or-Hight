//
//  TabBar.h
//  dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义协议
@protocol MyTabBarDelegate <UITabBarDelegate>

@optional //协议修饰符，还有一个是默认的@required
//声明方法
-(void)tabBarPlusButton;

@end

@interface TabBar : UITabBar

//遵循协议的一个代理变量定义
@property (nonatomic,weak) id<MyTabBarDelegate> delegate;

@end
