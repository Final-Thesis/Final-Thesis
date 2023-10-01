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
    var location : String
    var password : String
    var desc : String
    var projectsOwned : [Project]?
    var cvLink : String
    var accountDetail : AccountDetail
    var notifications : [Notification]?
    var chats: [Chat]?
    
    init(name: String, email: String, location: String, password: String, bankAccount: String, desc: String, projectsOwned: [Project]? = nil, cvLink: String, accountDetail : AccountDetail = Mock.accountDetails[0], chats: [Chat]? = nil) {
        self.email = email
        self.location = location
        self.password = password
        self.desc = desc
        self.projectsOwned = projectsOwned
        self.cvLink = cvLink
        self.accountDetail = AccountDetail(name: name, location: location, bankAccount: bankAccount)
        self.chats = chats
    }
    
    init(email: String, location: String, password: String, desc: String, projectsOwned: [Project]? = nil, cvLink: String, accountDetail : AccountDetail, notifications : [Notification]? = nil){
        self.email = email
        self.location = location
        self.password = password
        self.desc = desc
        self.projectsOwned = projectsOwned
        self.cvLink = cvLink
        self.accountDetail = accountDetail
        self.notifications = notifications
    }
    
    init(email: String, location: String, password: String, desc: String, projectsOwned: [Project]? = nil, cvLink: String, accountDetail : AccountDetail, notifications : [Notification]? = nil, chats: [Chat]? = nil){
        self.email = email
        self.location = location
        self.password = password
        self.desc = desc
        self.projectsOwned = projectsOwned
        self.cvLink = cvLink
        self.accountDetail = accountDetail
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
        lhs.location == rhs.location &&
        lhs.password == rhs.password &&
        lhs.desc == rhs.desc &&
        lhs.projectsOwned == rhs.projectsOwned &&
        lhs.cvLink == rhs.cvLink
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(email)
        hasher.combine(location)
        hasher.combine(password)
        hasher.combine(desc)
        hasher.combine(projectsOwned)
        hasher.combine(cvLink)
    }
}
