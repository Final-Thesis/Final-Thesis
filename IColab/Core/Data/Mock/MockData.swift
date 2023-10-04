//
//  Mock.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Mock {
    static var projects: [Project] = []
    static var chats: [Chat] = []
    static var notifications: [Notification] = []
    static var accounts: [Account] = []
    
    static var tags: [String] = ["SwiftUI", "UIKit", "Vision", "SpriteKit", "CoreML", "AVFoundation"]
    
    init() {
        Mock.accounts = MockAccounts.accounts
        
        Mock.projects = MockProjects.projects
        Mock.notifications = MockNotifications.notifications
        Mock.chats = MockChats.generateArray()
        
        for account in Mock.accounts {
            account.projectsOwned = MockProjects.addProjects()
            account.projectsJoined = MockProjects.addProjects()
            account.chats = Mock.chats
            account.notifications = Mock.notifications
        }
    }
}
