//
//  SceneDelegate.swift
//  pinterestClone
//
//  Created by Денис on 16.03.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        let profileService = ProfileService()
        let profileImageService = ProfileImageService()
        let profileImageHelper = ProfileImageHelper()
        let splashViewController = SplashViewController(
            profileService: profileService,
            profileImageService: profileImageService,
            profileImageHelper: profileImageHelper)
        window?.rootViewController = splashViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}

