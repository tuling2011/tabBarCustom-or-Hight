//
//  TabBarViewController.m
//  Dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#define kClasskey  @"rootVCClassString"
#define kTitleKey  @"title"
#define kImageKey  @"imageName"
#define kSelImagekey  @"selectedImageName"



#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "RecommendViewController.h"
#import "OnlineViewController.h"
#import "MineViewController.h"
#import "NavigationController.h"
#import "TabBar.h"
#import "PlusButtonViewController.h"

@interface TabBarViewController ()<MyTabBarDelegate>

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.opaque = YES;
    self.tabBar.tintColor = RGB(244, 255, 255);

    
//    TabBar *tabbar = [[TabBar alloc]init];
//    tabbar.delegate = self;
//    [self setValue:tabbar forKey:@"tabBar"];

    

    NSArray *childItemsArray = @[
                                 @{kClasskey :@"HomeViewController",
                                   kTitleKey :@"首页",
                                   kImageKey :@"首页未选中",
                                   kSelImagekey :@"首页选中"
                                    },
                                 @{kClasskey :@"RecommendViewController",
                                   kTitleKey :@"推荐",
                                   kImageKey :@"推荐未选中",
                                   kSelImagekey :@"推荐选中"
                                   },
                                 @{kClasskey :@"OnlineViewController",
                                   kTitleKey :@"直播",
                                   kImageKey :@"直播未选中",
                                   kSelImagekey :@"直播选中"
                                   },
                                 @{kClasskey :@"MineViewController",
                                   kTitleKey :@"我的",
                                   kImageKey :@"我的未选中",
                                   kSelImagekey :@"我的选中"
                                   }
                                 ];
    [childItemsArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIViewController *vc = [NSClassFromString(obj[kClasskey]) new];
        vc.title = obj[kTitleKey];
        vc.tabBarItem.title = obj[kTitleKey];
        vc.tabBarItem.image = [[UIImage imageNamed:obj[kImageKey]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:obj[kSelImagekey]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        vc.tabBarItem.image = [UIImage imageNamed:obj[kImageKey]];
//        vc.tabBarItem.selectedImage = [UIImage imageNamed:obj[kSelImagekey]];
        NavigationController *nav = [[NavigationController alloc]initWithRootViewController:vc];
        [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
//        [self.tabBar setBackgroundImage:[UIImage imageNamed:@"123"]];
        [self addChildViewController:nav];
        
        
    }];
    
    // Do any additional setup after loading the view.
}
-(void)tabBarPlusButton{
    PlusButtonViewController *vc = [[PlusButtonViewController alloc]init];
    [self presentViewController:vc animated:self completion:nil];
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
