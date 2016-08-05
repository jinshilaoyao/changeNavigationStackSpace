//
//  BViewController.swift
//  changeNavigation
//
//  Created by yesway on 16/8/5.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class BViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "B"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func push() {
//        navigationController?.pushViewController(CViewController(), animated: true)
        var controllerArr = self.navigationController?.viewControllers//获取Controller数组
        controllerArr?.removeAll()//移除controllerArr中保存的历史路径
        //重新添加新的路径
        controllerArr?.append((self.navigationController?.viewControllers[0])!)
        controllerArr?.append(AViewController())
        controllerArr?.append(CViewController())
        //这时历史路径为（root -> c -> b）
        //将组建好的新的跳转路径 set进self.navigationController里
        self.navigationController?.setViewControllers(controllerArr!, animated: true)//
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
