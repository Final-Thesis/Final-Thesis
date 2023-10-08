//
//  MockNotifications.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockNotifications: Randomizeable {
    typealias Element = Notification
    
    static var array: [Notification] = MockNotifications.initArray(count: projectNames.count) {
        return Notification(desc: "A short description of the notification", projectName: projectNames.randomElement()!, date: Date.now)
    }
    
    static var projectNames: [String] = [
        "Project 1",
        "Project 2",
        "Project 3",
        "Project 4",
        "Project 5",
        "Project 6",
        "Project 7",
    ]
}
