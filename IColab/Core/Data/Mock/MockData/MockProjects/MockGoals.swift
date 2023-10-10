//
//  MockGoals.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockGoals: Randomizeable {
    typealias Element = Goal
    
    static var array: [Goal] {
        MockGoals.initArray(count: names.count) {
            return Goal(name: names.randomElement()!, nominal: Int.random(in: 1000...5000), desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now.addingTimeInterval(Double.random(in: 1000...10000)), isAchieved: false, tasks: MockTasks.array)
        }
    }
    
    static var names: [String] = [
        "Goal 1",
        "Goal 2",
        "Goal 3",
        "Goal 4",
        "Goal 5",
        "Goal 6",
        "Goal 7",
    ]
}
