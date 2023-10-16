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
            return "doc.text.magnifyingglass"
        case .projects:
            return "menucard"
        case .chats:
            return "bubble.left"
        case .notifications:
            return "bell"
        case .profile:
            return "person"
        }
    }
    func getCaption() -> String {
        switch self{
        case .home:
            return "Browse"
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
