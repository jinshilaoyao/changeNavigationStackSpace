//
//  AuthorizationViewController.swift
//  Notifaction
//
//  Created by yesway on 16/8/15.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit
import UserNotifications
class AuthorizationViewController: UIViewController {

    @IBAction func requestNotificationCenter(_ sender: UIBarButtonItem) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.sound,.alert]) {
            (granted,error) in
            if granted {
                UIApplication.shared.registerForRemoteNotifications()
            } else {
                UIAlertController.showConfigAlert(message: error.debugDescription, in: self)
            }
        }
    }
    
    @IBOutlet weak var DetailInfo: UILabel!
    
    var settings: UNNotificationSettings? {
        didSet {
            if isViewLoaded {
                updataUI()
            }
        }
    }
    
    
    private func updataUI() {
        
        DetailInfo.text = settings?.description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updataUI()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updataSetting), name: .UIApplicationWillEnterForeground, object: nil)
    }
    
    
    @objc private func updataSetting() {
        UNUserNotificationCenter.current().getNotificationSettings { self.settings = $0 }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UNNotificationSetting: CustomStringConvertible {
    public var description: String {
        switch self {
        case .notSupported:
            return "No Supported"
        case .enabled: return "Enable"
        case .disabled: return "Disable"
        }
    }
}

extension UNAlertStyle: CustomStringConvertible {
    public var description: String {
        switch self {
        case .alert: return "Alert"
        case .banner: return "Banner"
        case .none: return "None"
        }
    }
}

