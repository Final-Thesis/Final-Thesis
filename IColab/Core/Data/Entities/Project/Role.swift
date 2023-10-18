//
//  Role.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

enum Role: String, CaseIterable {
    case frontend = "Front-End"
    case backend = "Back-End"
    case design = "Designer"
    
    static func getRoleIcon(role: Role) -> String {
        switch role {
            case .frontend:
                return "computermouse"
            case .backend:
                return "desktopcomputer"
            case .design:
                return "paintbrush.pointed"
        }
    }
}
