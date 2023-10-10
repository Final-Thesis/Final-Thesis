//
//  MockTasks.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockTasks: Randomizeable {
    typealias Element = Task
    
    static var array: [Task] {
        MockTasks.initArray(count: 7) {
            return Task(title: "Example Task \(Int.random(in: 1...10))", status: TaskStatus.allCases.randomElement()!)
        }
    }
}
