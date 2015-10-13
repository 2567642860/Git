//
//  ContainerView.m
//  Practice
//
//  Created by lanou3g on 15/9/28.
//  Copyright (c) 2015年 Night_Boos. All rights reserved.
//

#import "ContainerView.h"

@implementation ContainerView

- (void)dealloc
{
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
        [self p_setupViews];
    }
    return self;
}

- (void)p_setupViews
{
    self.ContentView = [[[UIView alloc] init] autorelease];
    self.ContentView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), 50);
    self.ContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.ContentView];
    
    self.redButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.redButton.frame = CGRectMake(0, 0, CGRectGetWidth(self.ContentView.frame) / 2.0, CGRectGetHeight(self.ContentView.frame));
    self.redButton.backgroundColor = [UIColor redColor];
    [self.ContentView addSubview:self.redButton];
    
    self.blueButton = [UIButton buttonWithType:(UIButtonTypeSystem)];
    self.blueButton.frame = CGRectMake(CGRectGetMaxX(self.redButton.frame), CGRectGetMinY(self.redButton.frame), CGRectGetWidth(self.redButton.frame), CGRectGetHeight(self.redButton.frame));
    self.blueButton.backgroundColor = [UIColor blueColor];
    [self.ContentView addSubview:self.blueButton];
    
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
