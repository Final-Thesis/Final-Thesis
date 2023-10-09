//
//  EditProjectViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import Foundation

class EditProjectViewModel: ObservableObject {
    @Published var milestones: [Milestone]
    
    init(milestones: [Milestone]) {
        self.milestones = milestones
        for milestone in milestones {
            print(milestone.id)
            print(milestone.role)
        }
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
        
        milestones[index!].goals.append(Goal(name: title, nominal: nominal, desc: desc, endDate: dueDate, isAchieved: false, tasks: tasks))
    }
}
