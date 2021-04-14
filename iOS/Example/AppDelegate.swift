//
//  AppDelegate.swift
//  Example
//
//  Created by 唐佳诚 on 2021/1/7.
//

import UIKit
import Hummer

extension Bundle {
    static var hummerBundle: String {
        return Bundle.main.path(forResource: "hummer", ofType: "bundle")!
    }
    
    static var enterJSPath: String {
        return self.hummerBundle.appending("/hummer/examples/index.js")
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Hummer.startEngine(nil)
        let path = Bundle.enterJSPath//Bundle.main.path(forResource: "HelloWorld", ofType: "js")!
        let url = NSURL.init(fileURLWithPath: path)
        let vc = ViewController.init(url: url.absoluteString, params: nil)!
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//        let nav = UINavigationController.init(rootViewController: vc)
        window?.rootViewController = vc
        
        return true
    }
}

