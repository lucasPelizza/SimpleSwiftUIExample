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
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Use a UIHostingController as window root view controller
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            userData.favoritePlayers.append(leaguesData[0].teams[0].players[0])
            userData.favoriteTeams.append(leaguesData[0].teams[0])
            userData.favoritePlayers.append(leaguesData[0].teams[1].players[0])
            userData.favoriteTeams.append(leaguesData[0].teams[1])
            userData.favoritePlayers.append(leaguesData[0].teams[2].players[0])
            userData.favoriteTeams.append(leaguesData[0].teams[2])
            userData.favoritePlayers.append(leaguesData[0].teams[3].players[0])
            userData.favoriteTeams.append(leaguesData[0].teams[3])
            window.rootViewController = UIHostingController(rootView: TabbedNavigator())
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

