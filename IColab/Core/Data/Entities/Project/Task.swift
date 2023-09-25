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
    var status: taskStatus = .notCompleted
    
    var isToggled: Bool = false
}

enum taskStatus {
    case notCompleted, onReview, completed
}
