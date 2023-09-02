//
//  Mock.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Mock{
    static var data = [
        Project(title: "Project Title", type: "Front-end", tags: ["SwiftUI", "CoreML", "Vision"], startDate: Date.now, endDate: Date.now.addingTimeInterval(10), desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Project(title: "Project Title", type: "Back-end", tags: ["SwiftUI", "CoreML", "Vision"], startDate: Date.now, endDate: Date.now.addingTimeInterval(10), desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        Project(title: "Project Title", type: "Back-end", tags: ["SwiftUI", "CoreML", "Vision"], startDate: Date.now, endDate: Date.now.addingTimeInterval(10), desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    ]
}
