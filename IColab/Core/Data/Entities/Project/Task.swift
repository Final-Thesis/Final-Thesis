//
//  Task.swift
//  IColab
//
//  Created by Jeremy Raymond on 25/09/23.
//

import Foundation

struct Task: Identifiable {
    
    let id = UUID().uuidString
    var title: String = ""
    var member: String = ""
    var status: TaskStatus = .notCompleted
    
    mutating func setStatus(status: TaskStatus) {
        self.status = status
        print("this task: " + self.title + ", is of status: ", self.status.rawValue)
    }
    
//    var isToggled: Bool = false
}

enum TaskStatus: String, CaseIterable {
    case notCompleted = "Not Completed",
         onReview = "On Review",
         completed = "Completed"
}
