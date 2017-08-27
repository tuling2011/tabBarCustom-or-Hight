//
//  HightTabBarViewController.m
//  dorayo
//
//  Created by   on 16/12/12.
//  Copyright © 2016年  . All rights reserved.
//

#import "HightTabBarViewController.h"
#import "HomeViewController.h"
#import "RecommendViewController.h"
#import "OnlineViewController.h"
#import "MineViewController.h"
#import "NavigationController.h"
#import "HightBarButtonViewController.h"


@interface HightTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation HightTabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, -8, self.tabBar.frame.size.width, self.tabBar.frame.size.height)];
    [imageView setImage:[UIImage imageNamed:@"tabbar_bg"]];
    [imageView setContentMode:UIViewContentModeCenter];
    [self.tabBar insertSubview:imageView atIndex:0];
    //覆盖原生Tabbar的上横线
    [[UITabBar appearance] setShadowImage:[self createImageWithColor:[UIColor clearColor]]];
    [[UITabBar appearance] setBackgroundImage:[self createImageWithColor:[UIColor clearColor]]];
    
    [self setTabBarVC];



}

-(UIImage*) createImageWithColor:(UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
-(void)setTabBarVC{
    [self setTabBarChildContrlooer:[[HomeViewController alloc] init] title:@"首页" image:@"首页未选中" selectImage:@"首页选中"];
    [self setTabBarChildContrlooer:[[RecommendViewController alloc] init] title:@"推荐" image:@"推荐未选中" selectImage:@"推荐选中"];
    [self setTabBarChildContrlooer:[[HightBarButtonViewController alloc] init] title:@"" image:@"钱" selectImage:@"钱"];
    [self setTabBarChildContrlooer:[[OnlineViewController alloc] init] title:@"直播" image:@"直播未选中" selectImage:@"直播选中"];
    [self setTabBarChildContrlooer:[[MineViewController alloc] init] title:@"我的" image:@"我的未选中" selectImage:@"我的选中"];
    
    
    
    
}


-(void)setTabBarChildContrlooer:(UIViewController *)controller title:(NSString *)title image:(NSString *)imageName selectImage:(NSString *)selectImageName{
    
    controller.title = title;
    
    NavigationController *nav = [[NavigationController alloc]initWithRootViewController:controller];
    nav.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    [self addChildViewController:nav];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
