//
//  MockTasks.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockTasks: Randomizeable {
    typealias Element = Task
    
    static var array: [Task] = MockTasks.initArray(count: 7) {
        return Task(title: "Example Task 1", member: "Member Name 1", status: .notCompleted)
    }
}
