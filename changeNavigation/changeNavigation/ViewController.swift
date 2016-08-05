//
//  ViewController.swift
//  changeNavigation
//
//  Created by yesway on 16/8/5.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func push() {
        navigationController?.pushViewController(BViewController(), animated: true)
    }


}

