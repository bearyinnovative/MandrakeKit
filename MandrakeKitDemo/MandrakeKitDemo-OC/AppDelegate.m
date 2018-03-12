//
//  AppDelegate.m
//  MandrakeKitDemo-OC
//
//  Created by Kelvin on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

#import "AppDelegate.h"
#import "MandrakeKit/MandrakeKit-Swift.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [MDKConfig setupWithTokenType:@"bearer" token:@"7313bbbdcef7826566ee2098ea85e7b7" domain:@"wanketest"];
    [MDKConfig enableWaterMarkWith:@"beary-iOS"];
    UITabBarController *tab = [UITabBarController new];
    tab.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:[UIViewController new]],  [[UINavigationController alloc] initWithRootViewController:[[View alloc] init]]];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
