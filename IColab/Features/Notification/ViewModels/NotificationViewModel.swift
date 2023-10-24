//
//  NotificationViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 19/09/23.
//

import Foundation

class NotificationViewModel {
    var notifications : [Notification]?
    
    init(notifications: [Notification]? = nil) {
        self.notifications = getNotifications()
    }
    
    private func getNotifications() -> [Notification]?{
        return AccountManager.shared.account?.notifications
    }
}
