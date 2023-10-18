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
        "IoT Project",
        "Create ML Project",
        "Augmented Reality Project"
    ]
    
//    static var array: [Project] =  {
//        return title.map { title in
//            Project(
//                title: title,
//                owner: MockAccounts.array.randomElement()!,
//                members: MockMembers.generateArray(),
//                role: Role.allCases.randomElement()!.rawValue,
//                requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
//                tags: ["SwiftUI", "CoreML", "Vision"],
//                startDate: Date.now.addingTimeInterval(Double.random(in: 1000...10000)),
//                endDate: Date.now.addingTimeInterval(Double.random(in: 10000...100000)),
//                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
//                milestones: MockMilestones.generateArray()
//            )
//        }
//    }()
    
    static var array: [Project] =
        MockProjects.initArray(count: title.count) {
            Project(
                title: title.randomElement()!,
                owner: MockAccounts.array.randomElement()!,
                members: MockMembers.array,
                role: Role.allCases.randomElement()!.rawValue,
                requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
                tags: ["SwiftUI", "CoreML", "Vision"],
                startDate: Date.now.addingTimeInterval(Double.random(in: 1000...10000)),
                endDate: Date.now.addingTimeInterval(Double.random(in: 10000...100000)),
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                milestones: MockMilestones.array
            )
        }
    
    
    static func addProjects() -> [Project] {
        return MockProjects.array
    }
}
