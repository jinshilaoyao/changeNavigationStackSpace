//
//  NavigationController.swift
//  navigation
//
//  Created by yesway on 16/8/10.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
