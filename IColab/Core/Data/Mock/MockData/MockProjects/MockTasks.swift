//
//  MockTasks.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockTasks {
    static var tasks: [Task] = [
        Task(title: "Example Task 1", member: "Member Name 1", status: .notCompleted),
        Task(title: "Example Task 2", member: "Member Name 2", status: .notCompleted),
        Task(title: "Example Task 3", member: "Member Name 3", status: .notCompleted),
        Task(title: "Example Task 4", member: "Member Name 4", status: .onReview),
        Task(title: "Example Task 5", member: "Member Name 5", status: .onReview),
        Task(title: "Example Task 6", member: "Member Name 6", status: .completed),
        Task(title: "Example Task 7", member: "Member Name 7", status: .completed),
    ]
}
