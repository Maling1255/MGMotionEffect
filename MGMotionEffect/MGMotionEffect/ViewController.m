//
//  ViewController.m
//  MGMotionEffect
//
//  Created by maling on 2018/12/24.
//  Copyright © 2018 maling. All rights reserved.
//

#import "ViewController.h"

#define MGScreenWidth [UIScreen mainScreen].bounds.size.width
#define MGScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3.jpg"]];
    imageView1.contentMode = UIViewContentModeScaleAspectFill;
    imageView1.frame = CGRectMake(-100, -100, MGScreenWidth + 100, MGScreenHeight + 100);
    [self.view addSubview:imageView1];
    
    UIInterpolatingMotionEffect * fairyEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];// type表示沿水平方向运行效果
    fairyEffX.maximumRelativeValue = @(50);
    fairyEffX.minimumRelativeValue = @(-50);

    [imageView1 addMotionEffect:fairyEffX];

    UIInterpolatingMotionEffect * fairyEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    fairyEffY.maximumRelativeValue = @(50);
    fairyEffY.minimumRelativeValue = @(-50);
    [imageView1 addMotionEffect:fairyEffY];
    
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2.jpg"]];
    imageView2.contentMode = UIViewContentModeScaleAspectFill;
    imageView2.frame = CGRectMake(-100, -50, MGScreenWidth + 100, MGScreenHeight + 100);
    [self.view addSubview:imageView2];
    
    UIInterpolatingMotionEffect * backEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    backEffX.maximumRelativeValue = @(30);
    backEffX.minimumRelativeValue = @(-30);
    [imageView2 addMotionEffect:backEffX];

    UIInterpolatingMotionEffect * backEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    backEffY.maximumRelativeValue = @(30);
    backEffY.minimumRelativeValue = @(-30);
    [imageView2 addMotionEffect:backEffY];
    
    
    
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.jpg"]];
    imageView3.contentMode = UIViewContentModeScaleAspectFill;
    imageView3.frame = CGRectMake(-100, -20, MGScreenWidth + 100, MGScreenHeight + 100);
    [self.view addSubview:imageView3];
    
    UIInterpolatingMotionEffect * threeEffX = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    threeEffX.maximumRelativeValue = @(20);
    threeEffX.minimumRelativeValue = @(-20);
    [imageView3 addMotionEffect:threeEffX];
    
    UIInterpolatingMotionEffect * threeEffY = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    threeEffY.maximumRelativeValue = @(20);
    threeEffY.minimumRelativeValue = @(-20);
    [imageView3 addMotionEffect:threeEffY];

}


@end
