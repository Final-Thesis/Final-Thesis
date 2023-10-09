//
//  Goal.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct Goal: Identifiable, Equatable {
    let id = UUID().uuidString
    var name : String
    var nominal : Int
    var desc : String
    var endDate : Date
    var isAchieved : Bool
    var tasks: [Task]
    
    mutating func setTask(task: Task, index: Int) {
        self.tasks[index] = task
    }
}
