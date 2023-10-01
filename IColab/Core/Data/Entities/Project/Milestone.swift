//
//  Milestone.swift
//  IColab
//
//  Created by Kevin Dallian on 05/09/23.
//

import Foundation

enum Role: String {
    case frontend = "Front-End"
    case backend = "Back-End"
    case design = "Designer"
}

struct Milestone: Identifiable, Hashable {
    let id = UUID().uuidString
    var role: Role
    var goals: [Goal]
    
    func hash(into hasher: inout Hasher) {
        
    }
    
    static func == (lhs: Milestone, rhs: Milestone) -> Bool {
        return lhs.id == rhs.id
    }
}
