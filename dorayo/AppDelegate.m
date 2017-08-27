//
//  AppDelegate.m
//  dorayo
//
//  Created by   on 16/12/10.
//  Copyright © 2016年  . All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarViewController.h"          //正常tabbar
#import "HightTabBarViewController.h"     //凸出tabbar
#import "CustomTabBarViewController.h"    //凸出带文字tabbar

#import "NewfeatureViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    //导航栏透明设置,tabbar透明
//    [UINavigationBar appearance].translucent = NO;
     [UITabBar appearance].translucent = NO;
//    //消除tabbar的边框
    [[UITabBar appearance]setShadowImage:[[UIImage alloc]init]];
    [[UITabBar appearance]setBackgroundImage:[[UIImage alloc]init]];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
//版本新特性
    NSString *versionKey = @"CFBundleVersion";
    // 上一次的使用版本（存储在沙盒中的版本号）
    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:versionKey];
    // 当前app的版本号（从Info.plist中获得）
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[versionKey];
    if ([lastVersion isEqualToString:currentVersion]) {
        self.window.rootViewController = [[TabBarViewController alloc] init];
    } else {
        self.window.rootViewController = [[NewfeatureViewController alloc] init];
        //将版本号写入沙盒
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:versionKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
