//
//  EditProjectViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import Foundation

class EditProjectViewModel: ObservableObject {
    @Published var project: Project
    @Published var milestones: [Milestone]
    
    init(project: Project) {
        self.project = project
        self.milestones = project.milestones
    }
    
    @Published var title: String = ""
    @Published var nominal: Int = 0
    @Published var desc: String = ""
    @Published var dueDate: Date = Date.now
    @Published var tasks: [Task] = []
    
    func deleteTask(task: Task) {
        let index = tasks.firstIndex(of: task)!
        tasks.remove(at: index)
    }
    
    func getMilestone(role: Role) -> Milestone {
        let index = self.milestones.firstIndex(where: {$0.role == role})
        
        return self.milestones[index!]
    }
    
    func addGoal(role: Role) {
        let index = self.milestones.firstIndex(where: {$0.role == role})
        
        project.milestones[index!].goals.append(Goal(name: title, nominal: nominal, desc: desc, endDate: dueDate, isAchieved: false, tasks: tasks))
    }
    
    func editGoal(role: Role, goal: Goal) {
        let index = self.milestones.firstIndex(where: {$0.role == role})
        let goalIndex = self.milestones[index!].goals.firstIndex(where: {$0.id == goal.id})
        
        let goal = project.milestones[index!].goals[goalIndex!]
        
        project.milestones[index!].goals[goalIndex!] = Goal(name: title, nominal: nominal, desc: desc, endDate: dueDate, isAchieved: goal.isAchieved, tasks: tasks)
        
        self.milestones = self.project.milestones
    }
    
    func deleteGoal(role: Role, goal: Goal) {
        let index = self.milestones.firstIndex(where: {$0.role == role})
        let goalIndex = self.milestones[index!].goals.firstIndex(where: {$0.id == goal.id})!
        
        project.milestones[index!].goals.remove(at: goalIndex)
        
        self.milestones = self.project.milestones
    }
}
