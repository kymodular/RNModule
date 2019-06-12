//
//  ViewController.m
//  RNModule
//
//  Created by 王英辉 on 2019/6/11.
//  Copyright © 2019 kyleboy. All rights reserved.
//

#import "ViewController.h"
#import "RNViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 200, 40);
    btn.center = self.view.center;
    [btn setTitle:@"go RNViewController" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(gotoRN:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)gotoRN:(id)sender {
    [self.navigationController pushViewController:[RNViewController new] animated:YES];
}

@end
