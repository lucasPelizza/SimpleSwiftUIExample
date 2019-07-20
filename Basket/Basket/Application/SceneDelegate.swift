//
//  SceneDelegate.swift
//  Basket
//
//  Created by Lucas Pelizza on 17/07/2019.
//  Copyright © 2019 Lucas Pelizza. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: TabbedNavigator().environmentObject(userData))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

