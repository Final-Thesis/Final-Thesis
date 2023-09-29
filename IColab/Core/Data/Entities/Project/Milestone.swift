//
//  Milestone.swift
//  IColab
//
//  Created by Kevin Dallian on 05/09/23.
//

import Foundation

struct Milestone: Identifiable, Hashable {
    let id = UUID().uuidString
    var name : String
    var nominal : Int
    var desc : String
    var endDate : Date
    var isAchieved : Bool
    var tasks: [Task]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: Milestone, rhs: Milestone) -> Bool {
        return lhs.id == rhs.id
    }
}
