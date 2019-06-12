//
//  RNViewController.m
//  RNModule
//
//  Created by kyleboy on 2019/6/12.
//  Copyright © 2019 kyleboy. All rights reserved.
//

#import "RNViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridge.h>

@interface RNViewController ()

@property (nonatomic, strong) RCTBridge *bridge;

@end

@implementation RNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 200, 40);
    btn.center = self.view.center;
    [btn setTitle:@"go RNPage" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(gotoRN:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}


- (void)gotoRN:(id)sender {
    NSLog(@"High Score Button Pressed");
    if (self.bridge == nil) {
        NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
        
        self.bridge = [[RCTBridge alloc] initWithBundleURL:jsCodeLocation
                                            moduleProvider:nil
                                             launchOptions:nil];
    }
    
    
    NSDictionary *dict = @{
                           @"scores" : @[
                                   @{
                                       @"name" : @"Alex",
                                       @"value": @"42"
                                       },
                                   @{
                                       @"name" : @"Joel",
                                       @"value": @"10"
                                       }
                                   ]
                           };
    
    //    RCTRootView *rootView =
    //    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
    //                                moduleName: @"RNHighScores"
    //                         initialProperties: dict
    //                             launchOptions: nil];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:self.bridge
                                                     moduleName:@"HomePage"
                                              initialProperties:dict];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
