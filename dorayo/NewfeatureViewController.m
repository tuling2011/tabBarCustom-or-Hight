//
//  NewfeatureViewController.m
//  dorayo
//
//  Created by xuetaowang on 2017/8/26.
//  Copyright © 2017年 JinwenTechnology. All rights reserved.
//

#import "NewfeatureViewController.h"
#import "TabBarViewController.h"

@interface NewfeatureViewController ()

@end

@implementation NewfeatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 开始微博
    UIButton *startBtn = [[UIButton alloc] init];
    [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button"] forState:UIControlStateNormal];
    [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button_highlighted"] forState:UIControlStateHighlighted];
    startBtn.size = startBtn.currentBackgroundImage.size;
    startBtn.centerX = self.view.centerX;
    startBtn.centerY = self.view.height * 0.75;
    [startBtn setTitle:@"开始" forState:UIControlStateNormal];
    NSLog(@"newFeatureVC%@",NSStringFromCGRect(startBtn.frame));
    [startBtn addTarget:self action:@selector(startClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startBtn];

}

-(void)startClick{

    // 切换到MainViewController，NewfeatureViewController会被销毁
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    window.rootViewController = [[TabBarViewController alloc] init];


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
