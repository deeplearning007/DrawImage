//
//  FirstViewController.m
//  OpenGLESDrawImage
//
//  Created by suntongmian on 16/9/6.
//  Copyright © 2016年 suntongmian. All rights reserved.
//

#import "FirstViewController.h"
#import "OpenGLESDrawImageView.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *backButton;

@end

@implementation FirstViewController
{
    OpenGLESDrawImageView *drawImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    drawImageView = [[OpenGLESDrawImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:drawImageView];
    
    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"life_png" ofType:@"png"]];
    [drawImageView drawImage:image];
    
    
    self.backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.backButton.frame = CGRectMake(60, 100, 100, 60);
    [self.backButton setTitle:@"join" forState:UIControlStateNormal];
    [self.backButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.backButton setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:self.backButton];
    [self.backButton addTarget:self action:@selector(backButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backButtonEvent:(UIButton *)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
