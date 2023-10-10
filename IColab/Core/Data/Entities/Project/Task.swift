//
//  Task.swift
//  IColab
//
//  Created by Jeremy Raymond on 25/09/23.
//

import Foundation

struct Task: Identifiable, Equatable {
    let id = UUID().uuidString
    
    var title: String = ""
    var status: TaskStatus = .notCompleted
    
    mutating func setStatus(status: TaskStatus) {
        self.status = status
    }
}

enum TaskStatus: String, CaseIterable {
    case notCompleted = "Not Completed",
         onReview = "On Review",
         completed = "Completed"
}
