//
//  ProjectMainViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation

class ProjectMainViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var picker: Int = 1
    @Published var projects: [Project] = []

    init() {
        projects = [
            Project(name: "Project 1", type: 1),
            Project(name: "Project 2", type: 2),
            Project(name: "Project 3", type: 3),
            Project(name: "Project 4", type: 4),
            Project(name: "Project 5", type: 5),
        ]
    }

    func filterProjects() {
        projects = projects.filter { project in
            project.name.contains(searchText) && project.type == picker
        }
    }
    
    struct Project: Identifiable {
        let id = UUID()
        let name: String
        let type: Int
    }
}
