//
//  ProjectOverviewViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import Foundation

class ProjectOverviewViewModel: ObservableObject {
    @Published var account: Account?
//    @Published var project: Project
    
    
    
    init(uid: String){
//        self.project = Mock.projects[0]
        self.account = getAccount(uid: uid)
        
    }
//    
//    init(project: Project) {
//        self.project = project
//    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getTestProject() -> Project {
        return (self.account?.projectsOwned![0])!
    }
    
    func editProjectDetail(title: String, summary: String, tags: [String], index: Int) {
        let project = account!.projectsOwned![0]
        
        account!.projectsOwned![0] = Project(title: title, role: project.role, requirements: project.requirements, tags: tags, startDate: project.startDate, endDate: project.endDate, desc: summary, milestones: project.milestones)
    }
    
    func getCurrentGoal() -> Goal {
        var goals = self.getTestProject().milestones[0].goals
        
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
        
        for member in self.getTestProject().members! {
            if member.role == role {
                count += 1;
            }
        }
        
        return count
    }
    
    
}