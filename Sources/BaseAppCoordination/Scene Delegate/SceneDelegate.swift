//
//  SceneDelegate.swift
//
//  Created by Tomas Skypala on 01/03/2020.
//  Copyright © 2020 Tomas Skypala. All rights reserved.
//

#if canImport(UIKit)

import UIKit

final class SceneDelegate<DependencyProvider: SceneDependencyProviding>: BaseSceneDelegate {

    let dependencyProvider = DependencyProvider()

    override func windowDidLoad(_ window: UIWindow) {
        super.windowDidLoad(window)

        window.rootViewController = dependencyProvider.makeRootViewController()

        dependencyProvider.sceneHandler?.windowWillBecomeVisible(window)
        window.makeKeyAndVisible()
        dependencyProvider.sceneHandler?.windowDidBecomeVisible(window)
    }

}

#endif
