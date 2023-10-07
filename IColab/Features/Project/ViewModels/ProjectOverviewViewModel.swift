//
//  ProjectOverviewViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import Foundation

class ProjectOverviewViewModel: ObservableObject {
    var pmvm: ProjectMainViewModel
//    @Published var account: Account?
    @Published var project: Project
    
    
    init(pmvm: ProjectMainViewModel) {
        self.pmvm = pmvm
        self.project = pmvm.getProject()
    }
//    init(uid: String){
//        self.project = Mock.projects[0]
//        self.account = getAccount(uid: uid)
//        
//    }
//    
    
    
//    private func getAccount(uid: String) -> Account?{
//        return Mock.accounts.first { account in
//            account.id == uid
//        }
//    }
//    
    func getProject() -> Project {
        return pmvm.getProject()
    }
    
    func editProjectDetail(title: String, summary: String, tags: [String]) {
        let project = self.project
        
        self.project = Project(title: title, role: project.role, requirements: project.requirements, tags: tags, startDate: project.startDate, endDate: project.endDate, desc: summary, milestones: project.milestones)
    }
    
    func getCurrentGoal() -> Goal {
        var goals = self.project.milestones[0].goals
        
        for goal in goals {
            if !goal.isAchieved {
                return goal
            }
        }
        
        return goals[0]
    }
    
    func existingRoles() -> [Role] {
        var roles: [Role] = []
        for role in Role.allCases {
            if memberCount(role: role) != 0 {
                roles.append(role)
            }
        }
        return roles
    }
    
    func memberCount(role: Role) -> Int {
        var count: Int = 0
        
        for member in self.project.members! {
            if member.role == role {
                count += 1;
            }
        }
        
        return count
    }
    
    
}
