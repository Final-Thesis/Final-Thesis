//
//  MockProjects.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockProjects: Randomizeable {
    
    
    typealias Element = Project
    
    static var title: [String] = [
        "Front-end Project",
        "Back-end Project",
        "Vision Project",
        "Database Project",
        "Design Project",
        "Cloud Project",
        "IoT Project"
    ]
    
    static var array: [Project] = MockProjects.initArray(count: title.count) {
        return Project(
            title: title.randomElement()!,
            owner: Mock.accounts[0],
            role: "Front-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10000),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.array[0],
                MockMilestones.array[1]
            ]
        )
    }
    
    static func addProjects() -> [Project] {
        return MockProjects.array
    }
}
