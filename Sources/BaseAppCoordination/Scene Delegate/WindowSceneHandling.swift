//
//  WindowSceneHandling.swift
//  SmartUniversity
//
//  Created by Tomas Skypala on 08/03/2020.
//  Copyright © 2020 Tomas Skypala. All rights reserved.
//

#if canImport(UIKit)

import UIKit

public protocol WindowSceneHandling {

    func windowWillBecomeVisible(_ window: UIWindow)

    func windowDidBecomeVisible(_ window: UIWindow)
}

#endif
