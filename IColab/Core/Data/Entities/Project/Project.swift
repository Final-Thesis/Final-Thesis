//
//  Project.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

class Project : Identifiable, Searchable {
    let id = UUID().uuidString
    var title : String
    var owner : Account?
    var members: [Member]?
    var role : String
    var requirements : [String]
    var tags : [String]
    var startDate : Date
    var endDate : Date
    var desc : String
    var milestones : [Milestone]
    var requests : [Request] = []
    var projectState : ProjectState = .notStarted
    
    init(title: String, owner: Account? = nil, members: [Member]? = nil, role: String, requirements: [String], tags: [String], startDate: Date, endDate: Date, desc: String, milestones: [Milestone]) {
        self.title = title
        self.owner = owner
        self.members = members
        self.role = role
        self.requirements = requirements
        self.tags = tags
        self.startDate = startDate
        self.endDate = endDate
        self.desc = desc
        self.milestones = milestones
    }
    
    func setOverview(title: String, tags: [String], desc: String) {
        self.title = title
        self.tags = tags
        self.desc = desc
    }
    
    public func setOwner(owner : Account){
        self.owner = owner
    }
    
    public func totalMilestone() -> Int{
        var total = 0
        for milestone in milestones {
            total += milestone.goals[0].nominal
        }
        return total
    }
    
    public func calculateAverageMilestone() -> Float {
        return Float(totalMilestone()/milestones.count)
    }
    
    public func addMilestone(milestone : Milestone){
        milestones.append(milestone)
    }
}

extension Project: Hashable{
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
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(owner)
        hasher.combine(role)
        hasher.combine(requirements)
        hasher.combine(tags)
        hasher.combine(startDate)
        hasher.combine(endDate)
        hasher.combine(desc)
        hasher.combine(milestones)
    }
}
