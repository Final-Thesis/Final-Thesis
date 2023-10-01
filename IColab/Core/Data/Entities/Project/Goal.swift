//
//  Goal.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct Goal: Identifiable {
    let id: UUID = UUID()
    var name : String
    var nominal : Int
    var desc : String
    var endDate : Date
    var isAchieved : Bool
    var tasks: [Task]
}
