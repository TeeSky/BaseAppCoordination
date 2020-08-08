//
//  SceneConfiguration.swift
//
//  Created by Tomas Skypala on 01/08/2020.
//  Copyright © 2020 Tomas Skypala. All rights reserved.
//

#if canImport(UIKit)

import UIKit

private final class SceneConfiguration<DependencyProvider: SceneDependencyProviding>: UISceneConfiguration {

    init(sceneSession: UISceneSession) {
        super.init(name: nil, sessionRole: sceneSession.role)

        self.delegateClass = SceneDelegate<DependencyProvider>.self
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.delegateClass = SceneDelegate<DependencyProvider>.self
    }
}

#endif
