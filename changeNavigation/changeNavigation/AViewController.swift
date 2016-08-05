//
//  AViewController.swift
//  changeNavigation
//
//  Created by yesway on 16/8/5.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class AViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "A"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func push() {
        navigationController?.pushViewController(BViewController(), animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
