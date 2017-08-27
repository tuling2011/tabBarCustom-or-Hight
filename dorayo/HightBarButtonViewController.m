//
//  HightBarButtonViewController.m
//  dorayo
//
//  Created by xuetaowang on 16/12/12.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "HightBarButtonViewController.h"
#import "ViewController.h"
@interface HightBarButtonViewController ()

@end

@implementation HightBarButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor magentaColor];
    
    //使用原型图，不进行渲染
    UIImage *setImage=[UIImage imageNamed: @"mine-setting-icon-click"];
    setImage = [setImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *moonImage=[UIImage imageNamed: @"mine-moon-icon-click"];
    moonImage = [moonImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.rightBarButtonItems = @[
                                                [[UIBarButtonItem alloc]initWithImage:setImage style:UIBarButtonItemStylePlain target:self action:@selector(next)],
                                                [[UIBarButtonItem alloc]initWithImage:moonImage style:UIBarButtonItemStylePlain target:self action:@selector(next)]
                                                ];
    

    
    // Do any additional setup after loading the view.
}

-(void)next{
    ViewController *vc = [[ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
    
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
