//
//  AppDelegate.m
//  MandrakeKitDemo-OC
//
//  Created by Kelvin on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

#import "AppDelegate.h"
#import "MandrakeKit/MandrakeKit-Swift.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [MDKConfig setupWithTokenType:@"bearer" token:@"ac8bdbecd86b25ab77758b30910463c1" domain:@"wanketest"];
    [MDKConfig enableWaterMarkWith:@"beary-iOS"];
    UITabBarController *tab = [UITabBarController new];
    tab.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:[ViewController new]],  [[UINavigationController alloc] initWithRootViewController:[[View alloc] init]]];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
