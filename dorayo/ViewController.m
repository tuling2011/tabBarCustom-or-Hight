//
//  ViewController.m
//  dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = @"123";
    
//使用原型图，不进行渲染
    UIImage *selectedImage=[UIImage imageNamed: @"navigationbar_pop_highlighted"];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:selectedImage style:UIBarButtonItemStylePlain target:self action:@selector(back)];
//使用渲染图片
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"navigationbar_pop_highlighted"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"最" style:UIBarButtonItemStylePlain target:self action:@selector(right)];
//默认是渲染的颜色，下面改为自定义的颜色
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor yellowColor];
    
}

-(void)back{
    
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)right{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
