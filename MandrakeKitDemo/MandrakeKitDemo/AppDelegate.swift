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
        MDKConfig.setup(tokenType: "bearer", token: "7314bbbdcef7826566ee2098ea85e7b7", domain: "wanketest")
        MDKConfig.enableWaterMark(with: "beary-iOS")
        let tab = UITabBarController()
        let vc = Messages.Recents.View()
        tab.viewControllers = [
            UINavigationController(rootViewController: UIViewController()),
            UINavigationController(rootViewController: vc)
        ]
        window?.rootViewController = tab
        window?.makeKeyAndVisible()
        return true
    }
}
