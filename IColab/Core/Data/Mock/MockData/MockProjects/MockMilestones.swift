//
//  MockMilestones.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockMilestones: Randomizeable {
    typealias Element = Milestone
    
    static var array: [Milestone] = MockMilestones.initArray(count: Role.allCases.count) {
        return Milestone(role: Role.allCases.randomElement()!, goals: MockGoals.array)
    }
}
