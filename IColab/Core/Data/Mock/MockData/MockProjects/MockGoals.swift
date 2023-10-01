//
//  MockGoals.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockGoals {
    static var goals: [Goal] = [
        Goal(name: "Goal 1", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: MockTasks.tasks),
        Goal(name: "Goal 2", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: MockTasks.tasks),
        Goal(name: "Goal 3", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: MockTasks.tasks),
        Goal(name: "Goal 4", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: MockTasks.tasks),
        Goal(name: "Goal 5", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: MockTasks.tasks),
    ]
}
