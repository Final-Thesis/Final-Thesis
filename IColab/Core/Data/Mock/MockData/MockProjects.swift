//
//  MockProjects.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockProjects {
    static var projects: [Project] = [
        Project(
            title: "Front-end Project",
            owner: Mock.accounts[0],
            role: "Front-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10000),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "Back-end Project",
            owner: Mock.accounts[1],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "Vision Project",
            owner: Mock.accounts[0],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "Database Project",
            owner: Mock.accounts[0],
            role: "Front-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10000),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "Design Project",
            owner: Mock.accounts[1],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "Cloud Project",
            owner: Mock.accounts[0],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
        Project(
            title: "IOT Project",
            owner: Mock.accounts[0],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                MockMilestones.milestones[0],
                MockMilestones.milestones[1]
            ]
        ),
    ]
    
    static func addProjects() -> [Project] {
        return MockProjects.projects
    }
}
