//
//  AppDelegate.swift
//  MandrakeKitDemo
//
//  Created by lang on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

import UIKit
import MandrakeKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        MDKConfig.setup(tokenType: "bearer", token: "ac8bdbecd86b25ab77758b30910463c1", domain: "wanketest")
        MDKConfig.enableWaterMark(with: "beary-iOS")
        let tab = UITabBarController()
        let vc = Messages.Recents.View()
        tab.viewControllers = [
            UINavigationController(rootViewController: ViewController()),
            UINavigationController(rootViewController: vc)
        ]
        window?.rootViewController = tab
        window?.makeKeyAndVisible()
        return true
    }
}
