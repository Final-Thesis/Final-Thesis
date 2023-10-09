//
//  CurrentTaskViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 06/10/23.
//

import Foundation

class CurrentTaskViewModel: ObservableObject {
    @Published var goal: Goal
    @Published var tasks: [Task] = []
    @Published var toggles: [Bool] = []
    
    @Published var notCompletedTasks: [Task] = []
    @Published var completedTasks: [Task] = []
    @Published var onReviewTasks: [Task] = []
    
    init(goal: Goal) {
        self.goal = goal
        self.tasks = self.goal.tasks
        self.initToggle()
    }
    
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
        for (index, element) in self.tasks.enumerated() {
            if toggles[index] == true && self.tasks[index].status == .notCompleted {
                self.tasks[index].setStatus(status: .onReview)
            }
        }
    }
}
