//
//  HomeViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

class HomeViewModel : ObservableObject{
    @Published var projects : [Project] = []
    @Published var searchText : String = ""
    @Published var searchPressed : Bool = false
    @Published var filters : [String] = []
    
    init(){
        projects = getProjects()
    }
    
    private func getProjects() -> [Project]{
        let allProjects = Mock.projects
        let filteredProjects = allProjects.filter { project in
            project.owner?.accountDetail.name != AccountManager.shared.account?.accountDetail.name
        }
        return filteredProjects
    }
    
    private func getSearchProjects(searchTitle: String) -> [Project] {
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
        self.projects = getSearchProjects(searchTitle: searchTitle)
    }
}
