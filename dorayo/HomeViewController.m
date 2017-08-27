//
//  HomeViewController.m
//  dorayo
//
//  Created by xuetaowang on 16/12/10.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor blackColor], NSFontAttributeName : [UIFont boldSystemFontOfSize:25]};
    
    //使用原型图，不进行渲染
    UIImage *setImage=[UIImage imageNamed: @"mine-setting-icon-click"];
    setImage = [setImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *moonImage=[UIImage imageNamed: @"mine-moon-icon-click"];
    moonImage = [moonImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    self.navigationItem.rightBarButtonItems = @[
                                                [[UIBarButtonItem alloc]initWithImage:setImage style:UIBarButtonItemStylePlain target:self action:@selector(next)],
                                                [[UIBarButtonItem alloc]initWithImage:moonImage style:UIBarButtonItemStylePlain target:self action:@selector(next)]
                                                ];
    
    
    UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 40, 40)];
    bt.backgroundColor = [UIColor cyanColor];
    [bt addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    
    
    UIImageView *image = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"D"]];
    image.frame = CGRectMake(0, 0, 120, 120) ;
    image.centerX = self.view.centerX;
    image.centerY = self.view.centerY*0.6;
    NSLog(@"homeVC%@",NSStringFromCGRect(image.frame));
    [self.view addSubview:image];
    
    
    
    
    UIImageView *view = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 120, 120)];
    view.centerX =self.view.centerX;
    view.centerY =self.view.centerY;
    NSLog(@"homeVC%@",NSStringFromCGRect(view.frame));
    NSLog(@"homeVC%@",NSStringFromCGRect(self.view.frame));

    //view 旋转
    //    view.transform = CGAffineTransformMakeRotation(M_PI*3.5);
    [self.view addSubview:view];
    UIImage *image1 = [UIImage imageNamed:@"D"];
    //image旋转
    CGImageRef cgim = image1.CGImage;
    UIImage *i = [UIImage imageWithCGImage:cgim scale:1 orientation:UIImageOrientationLeft];
    view.image = i;

    
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
