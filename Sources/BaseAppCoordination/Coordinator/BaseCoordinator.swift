//
//  BaseCoordinator.swift
//
//  Created by Tomas Skypala on 23/05/2020.
//  Copyright © 2020 Tomas Skypala. All rights reserved.
//

#if canImport(UIKit)

import UIKit

public protocol NavigationController: UIViewController {

    var interactivePopGestureRecognizer: UIGestureRecognizer? { get }

    func pushViewController(_ viewController: UIViewController)
    func popViewController()
    func popToRootViewController()
    func setNavigationBarHidden()
}

public protocol BaseCoordinator {
    associatedtype Dependencies

    init(navigationController: NavigationController, dependencies: Dependencies)

    func start()
}

extension UINavigationController: NavigationController {

    public func pushViewController(_ viewController: UIViewController) {
        pushViewController(viewController, animated: true)
    }

    public func popViewController() {
        popViewController(animated: true)
    }

    public func popToRootViewController() {
        popToRootViewController(animated: true)
    }

    public func setNavigationBarHidden() {
        setNavigationBarHidden(true, animated: false)
    }
}

#endif
