//
//  Target_RNModule.m
//  RNModule
//
//  Created by kyleboy on 2019/6/12.
//  Copyright © 2019 kyleboy. All rights reserved.
//

#import "Target_RNModule.h"
#import "RNViewController.h"

@implementation Target_RNModule

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    return [[RNViewController alloc] init];
}
@end
