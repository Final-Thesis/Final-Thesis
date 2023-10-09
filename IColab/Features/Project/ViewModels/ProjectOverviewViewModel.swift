//
//  ProjectOverviewViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import Foundation

class ProjectOverviewViewModel: ObservableObject {
//    var pmvm: ProjectMainViewModel
//    @Published var account: Account?
    @Published var project: Project = Mock.projects[0]
    
    
    init(uid: String) {
//        self.pmvm = pmvm
        self.project = self.getProject(uid: uid)
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
    func getProject(uid: String) -> Project {
        let project = Mock.projects.first(where: {$0.id == uid})
        return project!
//        return Mock.projects.first { project in
//            project.id == uid
//        }!
//        return pmvm.getProject()
    }
    
    func editProjectDetail(title: String, summary: String, tags: [String]) {
        self.project.setOverview(title: title, tags: tags, desc: summary)
    }
    
    func getCurrentGoal() -> Goal {
        let goals = self.project.milestones[0].goals
        
        for goal in goals {
            if !goal.isAchieved {
                print("returned current goal")
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
