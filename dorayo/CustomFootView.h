//
//  CustomFootView.h
//  dorayo
//
//  Created by xuetaowang on 16/12/11.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomFootViewDelegate <NSObject>

@optional
-(void)BackButton;
@end
@interface CustomFootView : UIView

@property (nonatomic,weak)id<CustomFootViewDelegate>delegate;

@end
