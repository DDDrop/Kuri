//
//  HogeWireframe.swift
//  Kuri
//
//  Created by hiroseyuudai on 2018/8/7.
//  Copyright © 2018 hiroseyuudai. All rights reserved.
//

import UIKit

protocol HogeWireframe: class {
    
}


class HogeWireframeImpl: HogeWireframe {
    private weak var viewController: UIViewController!
    
    init(
        viewController: UIViewController
        ) {
        self.viewController = viewController
    }
}