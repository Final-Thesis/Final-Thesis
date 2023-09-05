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
    var nominal : Float
    var desc : String
    var endDate : Date
    var isAchieved : Bool
}
