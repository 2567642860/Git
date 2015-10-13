//
//  ContainerViewController.m
//  Practice
//
//  Created by lanou3g on 15/9/28.
//  Copyright (c) 2015年 Night_Boos. All rights reserved.
//

#import "ContainerViewController.h"
#import "ContainerView.h"
#import "BlueViewController.h"
#import "RedViewController.h"
@interface ContainerViewController ()

@property (retain, nonatomic)ContainerView *cv;

@property (retain, nonatomic)BlueViewController *blueVC;

@property (retain, nonatomic)RedViewController *redVC;
@end

@implementation ContainerViewController

- (void)dealloc
{
    [_cv release];
    [super dealloc];
}

- (void)loadView
{
    self.cv = [[[ContainerView alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    self.view  = self.cv;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 添加button点击事件
    [self.cv.blueButton addTarget:self action:@selector(redButtonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.cv.redButton addTarget:self action:@selector(redButtonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    
    // 创建控制器
    self.redVC = [[[RedViewController alloc] init] autorelease];
    self.blueVC = [[[BlueViewController alloc] init] autorelease];
    
    //将两个控制器添加为ContainerViewController的子控制器
    [self addChildViewController:self.redVC];
    [self addChildViewController:self.blueVC];
    
    
    // 将redViewController视图显示
    [self.view addSubview:self.redVC.view];
    
    // 将button显示到前面
    [self.view bringSubviewToFront:self.cv.ContentView];
    
}

- (void)redButtonAction:(UIButton *)sender
{
    [self transitionFromViewController:self.blueVC toViewController:self.redVC duration:1 options:(UIViewAnimationOptions) animations:^{
         
    } completion:^(BOOL finished) {
        
    }];
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
