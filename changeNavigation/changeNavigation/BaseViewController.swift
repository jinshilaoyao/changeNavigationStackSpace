//
//  BaseViewController.swift
//  changeNavigation
//
//  Created by yesway on 16/8/5.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    lazy private var btn: UIButton = {
        let b = UIButton(frame: CGRect(x: 0, y: 100, width: 50, height: 50))
        b.backgroundColor = #colorLiteral(red: 0.2818343937, green: 0.5693024397, blue: 0.1281824261, alpha: 1)
        b.addTarget(self, action: #selector(pushBtnOnClick), for: .touchDown)
        return b
    }()
    
    @objc private func pushBtnOnClick() {
        push()
    }
    
    func push() {
        
    }
    
    lazy private var textfield: UITextField = {
       let text = UITextField(frame: CGRect(x: 0, y: 150, width: 100, height: 40))
        text.backgroundColor = #colorLiteral(red: 0.7602152824, green: 0.7601925135, blue: 0.7602053881, alpha: 1)
        return text
    }()

    var content: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
        // Do any additional setup after loading the view.
        view.addSubview(btn)
        view.addSubview(textfield)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let path = #file
        print("\(#function) in \(path)")
//        textfield.text = Cache.Object(forKey: "content")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let path = #file
        print("\(#function) in \(path)")
        Cache.setValue(<#T##value: AnyObject?##AnyObject?#>, forKey: <#T##String#>)
    }

}
