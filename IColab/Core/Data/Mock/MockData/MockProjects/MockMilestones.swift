//
//  MockMilestones.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockMilestones: Randomizeable {
    typealias Element = Milestone
    
    static func initArray(count: Int, elementGenerator: () -> Milestone) -> [Milestone] {
        var array: [Milestone] = []
        
        for _ in 0..<count {
            var element = elementGenerator()
            while array.contains(where: { $0.role == element.role }) {
                element = elementGenerator()
            }
            array.append(element)
        }
        
        return array
    }
    
    static var array: [Milestone] {
        MockMilestones.initArray(count: Role.allCases.count) {
            return Milestone(role: Role.allCases.randomElement()!, goals: MockGoals.array)
        }
    }
    
    
}
