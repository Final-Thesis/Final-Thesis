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
    
    static var tags = ["SwiftUI", "UIKit", "Vision", "SpriteKit", "CoreML", "AVFoundation"]
    
    init() {
        Mock.accounts = MockAccounts.accounts
        
        Mock.projects = MockProjects.projects
        Mock.notifications = MockNotifications.notifications
        Mock.chats = MockChats.chats
        
        MockAccounts.setProjects()
        Mock.accounts = MockAccounts.accounts
    }
}
