//
//  HomeViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

class HomeViewModel : ObservableObject{
    @Published var projects : [Project] = []
    
    init(){
        projects = getProjects()
    }
    
    private func getProjects() -> [Project]{
        let projects = Mock.projects
        return projects
    }
    
    private func getFilteredProjects(searchTitle: String) -> [Project] {
        if searchTitle.isEmpty{
            return Mock.projects
        }
        let allProjects = Mock.projects
        let filteredProjects = allProjects.filter { project in
            let projectTitleLowercased = project.title.lowercased()
            return projectTitleLowercased.contains(searchTitle.lowercased())
        }
        return filteredProjects
    }
    
    public func searchProject(searchTitle: String) {
        self.projects = getFilteredProjects(searchTitle: searchTitle)
    }
}
