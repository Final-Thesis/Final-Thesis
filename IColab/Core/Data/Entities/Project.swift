//
//  Project.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Project : Identifiable, Hashable{
    let id = UUID().uuidString
    var title : String
    var owner : Account?
    var role : String
    var requirements : [String]
    var tags : [String]
    var startDate : Date
    var endDate : Date
    var desc : String
    var milestones : [Milestone]
    
    public mutating func setOwner(owner : Account){
        self.owner = owner
    }
    
    public func totalMilestone() -> Int{
        var total = 0
        for milestone in milestones {
            total += milestone.nominal
        }
        return total
    }
    
    public func calculateAverageMilestone() -> Float {
        return Float(totalMilestone()/milestones.count)
    }
    
    static func == (lhs: Project, rhs: Project) -> Bool {
        return lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.owner == rhs.owner &&
        lhs.role == rhs.role &&
        lhs.requirements == rhs.requirements &&
        lhs.tags == rhs.tags &&
        lhs.startDate == rhs.startDate &&
        lhs.endDate == rhs.endDate &&
        lhs.desc == rhs.desc &&
        lhs.milestones == rhs.milestones
    }
}
