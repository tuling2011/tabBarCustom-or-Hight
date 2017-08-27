//
//  CustomTabBarViewController.m
//  dorayo
//
//  Created by xuetaowang on 16/12/14.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//
#define kClasskey  @"rootVCClassString"
#define kTitleKey  @"title"
#define kImageKey  @"imageName"
#define kSelImagekey  @"selectedImageName"


#import "CustomTabBarViewController.h"
#import "HomeViewController.h"
#import "RecommendViewController.h"
#import "HightBarButtonViewController.h"
#import "OnlineViewController.h"
#import "MineViewController.h"
#import "NavigationController.h"

@interface CustomTabBarViewController ()

@end

@implementation CustomTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, -8, self.tabBar.frame.size.width, self.tabBar.frame.size.height)];
//        [imageView setImage:[UIImage imageNamed:@"tabbar_bg"]];
//        [imageView setContentMode:UIViewContentModeCenter];
//        [self.tabBar insertSubview:imageView atIndex:0];
//        //覆盖原生Tabbar的上横线
//        [[UITabBar appearance] setShadowImage:[self createImageWithColor:[UIColor clearColor]]];
//        [[UITabBar appearance] setBackgroundImage:[self createImageWithColor:[UIColor clearColor]]];
    

    
//    NSArray *childItemsArray = @[
//                                 @{kClasskey :@"HomeViewController",
//                                   kTitleKey :@"首页",
//                                   kImageKey :@"首页未选中",
//                                   kSelImagekey :@"首页选中"
//                                   },
//                                 @{kClasskey :@"RecommendViewController",
//                                   kTitleKey :@"推荐",
//                                   kImageKey :@"推荐未选中",
//                                   kSelImagekey :@"推荐选中"
//                                   },
//                                 @{kClasskey :@"HightBarButtonViewController",
//                                   kTitleKey :@"投资",
//                                   kImageKey :@"我的钱",
//                                   kSelImagekey :@"我的钱"
//                                   },
//
//                                 @{kClasskey :@"OnlineViewController",
//                                   kTitleKey :@"直播",
//                                   kImageKey :@"直播未选中",
//                                   kSelImagekey :@"直播选中"
//                                   },
//                                 @{kClasskey :@"MineViewController",
//                                   kTitleKey :@"我的",
//                                   kImageKey :@"我的未选中",
//                                   kSelImagekey :@"我的选中"
//                                   }
//                                 ];
//    [childItemsArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        UIViewController *vc = [NSClassFromString(obj[kClasskey]) new];
//        vc.title = obj[kTitleKey];
//        vc.tabBarItem.title = obj[kTitleKey];
//        vc.tabBarItem.image = [[UIImage imageNamed:obj[kImageKey]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        vc.tabBarItem.selectedImage = [[UIImage imageNamed:obj[kSelImagekey]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        NavigationController *nav = [[NavigationController alloc]initWithRootViewController:vc];
//        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
//        //        [self.tabBar setBackgroundImage:[UIImage imageNamed:@"123"]];
//        [self addChildViewController:nav];
//        
//        
//    }];
    
    NSMutableArray *childVCArray = [[NSMutableArray alloc] initWithCapacity:4];
    self.tabBar.tintColor = RGB(244, 89, 27);

    HomeViewController *homeVC = [[HomeViewController alloc] init];
    homeVC.title = @"首页标题";
    [homeVC.tabBarItem setTitle:@"首页"];
    [homeVC.tabBarItem setImage:[[UIImage imageNamed:@"首页未选中"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [homeVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"首页选中"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ]];
    NavigationController *homeNavC = [[NavigationController alloc] initWithRootViewController:homeVC];
    [childVCArray addObject:homeNavC];
    
    RecommendViewController *recommendVC = [[RecommendViewController alloc] init];
    recommendVC.navigationItem.title = @"推荐标题";
    [recommendVC.tabBarItem setTitle:@"推荐"];
    [recommendVC.tabBarItem setImage:[UIImage imageNamed:@"推荐未选中"]];
    [recommendVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"推荐选中"]];
    NavigationController *recommendNavC = [[NavigationController alloc] initWithRootViewController:recommendVC];
    [childVCArray addObject:recommendNavC];
    
    HightBarButtonViewController *hightVC = [[HightBarButtonViewController alloc] init];
    hightVC.title = @"投资标题";
    [hightVC.tabBarItem setTitle:@"投资"];
    [hightVC.tabBarItem setImage:[[UIImage imageNamed:@"我的钱"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [hightVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"我的钱"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    hightVC.tabBarItem.imageInsets = UIEdgeInsetsMake(-15, 0, 15, 0);
    NavigationController *hightNavC = [[NavigationController alloc] initWithRootViewController:hightVC];
    [childVCArray addObject:hightNavC];
    
    
    OnlineViewController *onlineVC = [[OnlineViewController alloc] init];
    onlineVC.navigationItem.title = @"直播";
    [onlineVC.tabBarItem setTitle:@"直播"];
    [onlineVC.tabBarItem setImage:[UIImage imageNamed:@"直播未选中"]];
    [onlineVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"直播选中"]];
    NavigationController *onlineNavC = [[NavigationController alloc] initWithRootViewController:onlineVC];
    [childVCArray addObject:onlineNavC];
    
    MineViewController *mineVC = [[MineViewController alloc] init];
    mineVC.navigationItem.title = @"我的";
    [mineVC.tabBarItem setTitle:@"我的"];
    [mineVC.tabBarItem setImage:[UIImage imageNamed:@"我的未选中"]];
    [mineVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"我的选中"]];
    NavigationController *mineNavC = [[NavigationController alloc] initWithRootViewController:mineVC];
    [childVCArray addObject:mineNavC];
    
    self.viewControllers = childVCArray;
    
    
    

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
//设置中间按钮不受TintColor影响
- (void)awakeFromNib {
    [super awakeFromNib];
    NSArray *items =  self.tabBar.items;
    UITabBarItem *btnAdd = items[2];
    btnAdd.image = [btnAdd.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    btnAdd.selectedImage = [btnAdd.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
