//
//  NotificationHandler.swift
//  Notifaction
//
//  Created by yesway on 16/8/15.
//  Copyright © 2016年 joker. All rights reserved.
//

import UIKit
import UserNotifications
enum UserNotificationType: String {
    case timeInterval
    case timeIntervalForeground
    case pendingRemoval
    case pendingUpdate
    case deliveredRemoval
    case deliveredUpdate
    case actionable
    case mutableContent
    case media
    case customUI
}

extension UserNotificationType {
    var descriptionText: String {
        switch self {
        case .timeInterval: return "You need to switch to background to see the notification."
        case .timeIntervalForeground: return "The notification will show in-app. See NotificationHandler for more."
        default: return rawValue
        }
    }
    
    var title: String {
        switch self {
        case .timeInterval: return "Time"
        case .timeIntervalForeground: return "Foreground"
        default: return rawValue
        }
    }
}



enum UserNotificationCategoryType: String {
    case saySomething
    case customUI
}

enum SaySomethingCategoryAction: String {
    case input
    case goodbye
    case none
}

enum CustomizeUICategoryAction: String {
    case `switch`
    case open
    case dismiss
}

class NotificationHandler: NSObject, UNUserNotificationCenterDelegate{
    
    
    

}
