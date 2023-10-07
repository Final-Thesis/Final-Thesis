//
//  EditProjectViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import Foundation

class EditProjectViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var nominal: Int = 0
    @Published var desc: String = ""
    @Published var dueDate: Date = Date.now
    @Published var tasks: [Task] = MockTasks.array
}
