//
//  MockNotifications.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockNotifications {
    static var notifications: [Notification] = [
        Notification(desc: "A short description of the notification", projectName: "Project 1", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 2", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 3", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 4", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 5", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 6", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 7", date: Date.now),
    ]
}
