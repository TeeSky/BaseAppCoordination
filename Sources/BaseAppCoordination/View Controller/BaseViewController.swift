//
//  BaseViewController.swift
//
//  Created by Tomas Skypala on 03/03/2020.
//  Copyright © 2020 Tomas Skypala. All rights reserved.
//

#if canImport(UIKit)

import UIKit

open class BaseViewController<ScreenView: BaseScreenView>: UIViewController {

    public var screenView: ScreenView? { view as? ScreenView }

    override public func loadView() {
        view = ScreenView()
        screenView?.setupSubviews()
    }
}

#endif
