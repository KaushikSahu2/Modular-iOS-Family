//
//  AppDelegate.swift
//  App
//
//  Created by Kaushik Sahu on 17/05/2021.
//  Copyright © 2021 Microsoft. All rights reserved.
//

import UIKit
import Dependencies

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController: UITabBarController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpDependencies()
        installMainScreen()
        return true
    }

    private func installMainScreen() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController(nibName: nil, bundle: nil)
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        tabBarController.viewControllers = [
            firstScreen(),
            secondScreen()
        ]
        
        self.window = window
        self.tabBarController = tabBarController
    }
}

private func firstScreen() -> UIViewController {
    let storageViewController = StorageViewController()
    let vc = embedInNav(storageViewController)
    vc.tabBarItem.title = "Storage"
    vc.tabBarItem.image = UIImage(named: "first")
    return vc
}

private func secondScreen() -> UIViewController {
    let pushViewController = PushViewController()
    let vc = embedInNav(pushViewController)
    vc.tabBarItem.title = "Push"
    vc.tabBarItem.image = UIImage(named: "second")
    return vc
}

private func embedInNav(_ root: UIViewController) -> UINavigationController {
    return UINavigationController(rootViewController: root)
}
