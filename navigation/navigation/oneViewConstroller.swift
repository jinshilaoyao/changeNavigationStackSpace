//
//  oneViewConstroller.swift
//  navigation
//
//  Created by yesway on 16/8/10.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class oneViewConstroller: UIViewController {
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = #colorLiteral(red: 0.4120420814, green: 0.8022739887, blue: 0.9693969488, alpha: 1)
        
        navigationController?.navigationBar.subviews[0].alpha = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ABC"
        
        let v = UIButton(frame: CGRect(x: 0, y: 50, width: 30, height: 30))
        v.backgroundColor = #colorLiteral(red: 0.8949507475, green: 0.1438436359, blue: 0.08480125666, alpha: 1)
        v.addTarget(self, action: #selector(click), for: .touchDown)
        view.addSubview(v)
    }
    
    func click() {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
}
