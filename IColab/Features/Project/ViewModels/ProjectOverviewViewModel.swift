//
//  ProjectOverviewViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import Foundation

class ProjectOverviewViewModel: ObservableObject {
    @Published var project: Project = Mock.projects[0]
    
    
    init(project : Project) {
        self.project = project
    }
//    
    func getProject(uid: String) -> Project {
        let project = Mock.projects.first(where: {$0.id == uid})
        return project!
    }
    
    func editProjectDetail(title: String, summary: String, tags: [String]) {
        self.project.setOverview(title: title, tags: tags, desc: summary)
    }
    
    func getCurrentGoal() -> Goal {
        let goals = self.project.milestones[0].goals
        
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
    
    func rejectRequest(worker: Account){
        worker.notifications?.append(Notification(desc: "Request Rejected", projectName: project.title, date: Date.now))
        
    }
    
    func acceptRequest(request : Request){
        let member = Member(account: request.worker, role: request.role)
        project.members?.append(member)
        request.worker.notifications?.append(Notification(desc: "Request Accepted", projectName: project.title, date: Date.now))
    }
    
    func deleteRequest(request : Request){
        guard let index = project.requests.firstIndex(where: {$0.id == request.id}) else {
            return
        }
        project.requests.remove(at: index)
        self.objectWillChange.send()
    }
    
    func extend(date : Date){
        let dateRange = Calendar.current.dateComponents([.day], from: project.startDate, to: project.endDate)
        project.startDate = date
        project.endDate = Calendar.current.date(byAdding: dateRange, to: date)!
        
        project.projectState = .extended
        self.objectWillChange.send()
    }
}
