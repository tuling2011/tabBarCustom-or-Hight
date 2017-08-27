//
//  PlusButtonViewController.m
//  dorayo
//
//  Created by xuetaowang on 16/12/11.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import "PlusButtonViewController.h"
#import "CustomTopView.h"
#import "CustomFootView.h"

@interface PlusButtonViewController ()<CustomTopViewDelegate,CustomFootViewDelegate>

@property (nonatomic,retain)CustomTopView *navView;
@property (nonatomic,retain)CustomFootView *NavFootView;

@end

@implementation PlusButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.navView = [[CustomTopView alloc]initWithFrame:CGRectMake(0, 0, screenW, 64)];
    self.navView.delegate =self;
    [self.view addSubview:self.navView];
    
    self.NavFootView = [[CustomFootView alloc]initWithFrame:CGRectMake(0, screenH-40, screenW, 40)];
    self.NavFootView.delegate =self;
    [self.view addSubview:self.NavFootView];
    
}

-(void)backButton{

    [self dismissViewControllerAnimated:YES completion:nil];

}
-(void)BackButton{

    [self dismissViewControllerAnimated:YES completion:nil];
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
