//
//  CustomTopView.h
//  dorayo
//
//  Created by xuetaowang on 16/12/11.
//  Copyright © 2016年 JinwenTechnology. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomTopViewDelegate <NSObject>
@optional

-(void)backButton;

@end

@interface CustomTopView : UIView

@property (nonatomic,weak)id<CustomTopViewDelegate>delegate;

@end
