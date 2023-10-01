//
//  MockAccounts.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockAccounts {
    static var accounts: [Account] = [
        Account(
            email: "john@gmail.com",
            password: "john@123",
            accountDetail: MockAccountDetails.accountDetails[0]
        ),
        Account(
            email: "kevin@gmail.com",
            password: "kevin@123",
            accountDetail: MockAccountDetails.accountDetails[0]
        ),
        Account(
            email: "gregorius@gmail.com",
            password: "gregorius@123",
            accountDetail: MockAccountDetails.accountDetails[0]
        ),
        Account(
            email: "brandon@gmail.com",
            password: "brandon@123",
            accountDetail: MockAccountDetails.accountDetails[0]
        ),
    ]
    
    static func setProjects() {
        MockAccounts.accounts = [
            Account(
                email: "john@gmail.com",
                password: "john@123",
                accountDetail: MockAccountDetails.accountDetails[0],
                projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "kevin@gmail.com",
                password: "kevin@123",
                accountDetail: MockAccountDetails.accountDetails[0],
                projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "gregorius@gmail.com",
                password: "gregorius@123",
                accountDetail: MockAccountDetails.accountDetails[0],
                projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "brandon@gmail.com",
                password: "brandon@123",
                accountDetail: MockAccountDetails.accountDetails[0], 
                projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
        ]
    }
}
