//
//  UIAlertController+Extensino.swift
//  Notifaction
//
//  Created by yesway on 16/8/15.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    static func showConfigAlert(message: String, in viewcontroller: UIViewController) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        viewcontroller.present(alert, animated: true)
    }
    
}
