//
//  CreateProjectViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/10/23.
//

import Foundation

class CreateProjectViewModel: ObservableObject {
    @Published var account: Account = Mock.accounts[0]
    
    @Published var project: Project = Project(title: "", role: "", requirements: [], tags: [], startDate: Date.now, endDate: Date.now, desc: "", milestones: [])
    @Published var roles: [Role] = []
    
    init(uid: String){
        self.account = getAccount(uid: uid)
    }
    
    private func getAccount(uid: String) -> Account{
        return Mock.accounts.first { account in
            account.id == uid
        }!
    }
    
    func createProject() {
        project.owner = account
        project.members = []
        
        Mock.projects.append(project)
        account.projectsOwned?.append(project)
    }
}

