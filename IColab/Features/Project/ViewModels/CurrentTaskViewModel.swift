//
//  CurrentTaskViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 06/10/23.
//

import Foundation

class CurrentTaskViewModel: ObservableObject {
    @Published var project: Project
    @Published var goal: Goal!
    @Published var tasks: [Task] = []
    @Published var toggles: [Bool] = []
    
//    init(goal: Goal){
////        self.goal = getGoal(uid: uid)
//        self.goal = goal
//        self.tasks = goal.tasks
//        self.initToggle()
//    }
    
    init(project: Project) {
        goal = project.milestones
        
    }
    
//    func getGoal(goal: Goal) -> Goal {
////        let goal = MockGoals.array
////        
////        return goal.first { goal in
////            goal.id == uid
////        }!
////        return goal.first { x in
////            x == goal
////        }
//    }
    
    private func initToggle() {
        for task in tasks {
            if task.status == .notCompleted {
                toggles.append(false)
            }
            else {
                toggles.append(true)
            }
        }
    }
    
    
    
    func submitTasks() {
        for (index, _) in self.tasks.enumerated() {
            if toggles[index] == true && self.tasks[index].status == .notCompleted {
                self.goal.tasks[index].setStatus(status: .onReview)
                self.tasks = self.goal.tasks
            }
        }
    }
}
