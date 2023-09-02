//
//  TabBarType.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

enum TabBarType {
    case home
    case projects
    case chats
    case notifications
    case profile
}

extension TabBarType{
    func getImage() -> String{
        switch self{
        case .home:
            return "house"
        case .projects:
            return "menucard"
        case .chats:
            return "bubble.right"
        case .notifications:
            return "bell"
        case .profile:
            return "person"
        }
    }
    func getCaption() -> String {
        switch self{
        case .home:
            return "Home"
        case .projects:
            return "Projects"
        case .chats:
            return "Chats"
        case .notifications:
            return "Notifications"
        case .profile:
            return "Profile"
        }
    }
}
