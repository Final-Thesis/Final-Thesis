//
//  Account.swift
//  IColab
//
//  Created by Kevin Dallian on 03/09/23.
//

import Foundation

class Account: Identifiable {
    let id = UUID().uuidString
    var email : String
    var password : String
    
    var accountDetail : AccountDetail
    
    var projectsOwned : [Project]?
    var projectsJoined : [Project]?
    var notifications : [Notification]?
    var chats: [Chat]?
    
    init(email: String, password: String, accountDetail: AccountDetail, projectsOwned: [Project]? = nil, projectsJoined: [Project]? = nil, notifications: [Notification]? = nil, chats: [Chat]? = nil) {
        self.email = email
        self.password = password
        self.accountDetail = accountDetail
        self.projectsOwned = projectsOwned
        self.projectsJoined = projectsJoined
        self.notifications = notifications
        self.chats = chats
    }
    
    public func addProject(project : Project){
        projectsOwned?.append(project)
    }
}

extension Account: Hashable{
    static func == (lhs: Account, rhs: Account) -> Bool {
        return lhs.id == rhs.id &&
        lhs.email == rhs.email &&
        lhs.password == rhs.password &&
        lhs.projectsOwned == rhs.projectsOwned
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(email)
        hasher.combine(password)
        hasher.combine(projectsOwned)
    }
}
