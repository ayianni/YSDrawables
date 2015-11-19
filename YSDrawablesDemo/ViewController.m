//
//  ViewController.m
//  YSDrawablesDemo
//
//  Created by Alexander Yianni on 19/11/2015.
//  Copyright © 2015 Yianni Software Pty Ltd. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Example of programmatically adding
    CGSize circleSize = CGSizeMake(80.f, 80.f);
    CGRect circleRect = CGRectMake(self.view.bounds.size.width-circleSize.width, self.view.bounds.size.height-circleSize.height, circleSize.width, circleSize.height);
    CircleView *cv = [[CircleView alloc] init];
    [cv setFillColor:[UIColor magentaColor]];
    [cv setBackgroundColor:[UIColor clearColor]];
    
    [cv setFrame:circleRect];
    [self.view addSubview:cv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
