//
//  ProjectMainViewModel.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import Foundation

enum ProjectMainViewPicker: String, CaseIterable {
    case projectOwned = "Project Owned"
    case projectJoined = "Project Joined"
}

class ProjectMainViewModel: ObservableObject {
    @Published var account: Account = Mock.accounts[0]
    @Published var projectJoined: [Project] = []
    @Published var projectOwned: [Project] = []
    
    @Published var picker: ProjectMainViewPicker = .projectOwned
    @Published var needRefresh : Bool = false
    
    init(uid: String){
        self.account = getAccount(uid: uid)!
        
        self.projectJoined = account.projectsJoined!
        self.projectOwned = account.projectsOwned!
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getProjectsByType(picker: ProjectMainViewPicker) -> [Project] {
        switch picker {
            case .projectOwned:
                return account.projectsOwned!
            case .projectJoined:
                return account.projectsJoined!
        }
    }
}
