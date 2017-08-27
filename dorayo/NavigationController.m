//
//  NavigationController.m
//  Dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count >0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"cancelBtn"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"最右" style:UIBarButtonItemStylePlain target:self action:@selector(right)];

    }

    [super pushViewController:viewController animated:animated];

}
-(void)back{

    [self popViewControllerAnimated:YES];
    
}
-(void)right{

    [self popViewControllerAnimated:YES];

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
