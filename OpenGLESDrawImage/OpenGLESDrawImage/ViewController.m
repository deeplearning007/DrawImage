//
//  ViewController.m
//  OpenGLESDrawImage
//
//  Created by suntongmian on 16/9/5.
//  Copyright © 2016年 suntongmian. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *joinButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.joinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.joinButton.frame = CGRectMake(60, 100, 100, 60);
    [self.joinButton setTitle:@"join" forState:UIControlStateNormal];
    [self.joinButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.joinButton setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:self.joinButton];
    [self.joinButton addTarget:self action:@selector(joinButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)joinButtonEvent:(UIButton *)button {
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    [self presentViewController:firstVC animated:YES completion:nil];
}

@end
