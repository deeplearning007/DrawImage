//
//  ViewController.m
//  OpenGLESDrawImage
//
//  Created by suntongmian on 16/9/5.
//  Copyright © 2016年 suntongmian. All rights reserved.
//

#import "ViewController.h"
#import "OpenGLESDrawImageView.h"

@interface ViewController ()

@end

@implementation ViewController
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
