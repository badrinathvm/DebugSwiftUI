//
//  AppDelegate.swift
//  DebugSwiftUI
//
//  Created by Venkatnarayansetty, Badarinath on 2/12/20.
//  Copyright © 2020 Venkatnarayansetty, Badarinath. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if let window = window  {
            let entryVC = ViewController()
            let navigationController = UINavigationController(rootViewController: entryVC)
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        }
        
        return true
    }

}

