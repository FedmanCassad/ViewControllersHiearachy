//
//  AppDelegate.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 02.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let firstVC = FirstViewController()
    let secondVC = SecondViewController()
    let tabBarController = UITabBarController()
    let firstTabBarItem = UITabBarItem(title: "FirstVC", image: UIImage(named: "vine"), selectedImage: UIImage(named: "vine"))
    let secondTabBarItem = UITabBarItem(title: "SecondVC", image: UIImage(named: "radar"), selectedImage: UIImage(named: "radar"))
    let navVC = UINavigationController()
    navVC.navigationBar.isHidden = true
    navVC.viewControllers = [firstVC]
    
    tabBarController.setViewControllers([navVC, secondVC], animated: true)
    firstVC.tabBarItem = firstTabBarItem
    secondVC.tabBarItem = secondTabBarItem
    window?.rootViewController = tabBarController
    
    window?.makeKeyAndVisible()
    return true
  }
  
}

