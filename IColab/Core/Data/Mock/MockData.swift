//
//  Mock.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Mock {
    init() {
        Mock.projects = [
            Project(
                title: "Front-end Project",
                owner: Mock.accounts[0],
                role: "Front-end",
                requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
                tags: ["SwiftUI", "CoreML", "Vision"],
                startDate: Date.now,
                endDate: Date.now.addingTimeInterval(10000),
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                milestones: [
                    Mock.milestones[0],
                    Mock.milestones[1]
                ]
            ),
            Project(
                title: "Back-end Project",
                owner: Mock.accounts[1],
                role: "Back-end",
                requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
                tags: ["SwiftUI", "CoreML", "Vision"],
                startDate: Date.now,
                endDate: Date.now.addingTimeInterval(10),
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                milestones: [
                    Mock.milestones[0],
                    Mock.milestones[1]
                ]
            ),
            Project(
                title: "Project Title",
                owner: Mock.accounts[0],
                role: "Back-end",
                requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
                tags: ["SwiftUI", "CoreML", "Vision"],
                startDate: Date.now,
                endDate: Date.now.addingTimeInterval(10),
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                milestones: [
                    Mock.milestones[0],
                    Mock.milestones[1]
                ]
            )
        ]
        
        Mock.accounts = [
            Account(
                email: "john@gmail.com",
                password: "john@123",
                accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "kevin@gmail.com",
                password: "kevin@123",
                accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "gregorius@gmail.com",
                password: "gregorius@123",
                accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
            Account(
                email: "brandon@gmail.com",
                password: "brandon@123",
                accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
                projectsJoined: Mock.projects,
                notifications: Mock.notifications,
                chats: Mock.chats
            ),
        ]
    }
    
    static var projects: [Project] = []
    
    static var milestones = [
        Milestone(role: .frontend, goals: Mock.goals),
        Milestone(role: .frontend, goals: Mock.goals),
        Milestone(role: .frontend, goals: Mock.goals),
        Milestone(role: .frontend, goals: Mock.goals),
        Milestone(role: .frontend, goals: Mock.goals),
    ]
    
    static var goals = [
        Goal(name: "Goal 1", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: Mock.tasks),
        Goal(name: "Goal 2", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: Mock.tasks),
        Goal(name: "Goal 3", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: Mock.tasks),
        Goal(name: "Goal 4", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: Mock.tasks),
        Goal(name: "Goal 5", nominal: 1000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false, tasks: Mock.tasks),
    ]
    
    static var tasks = [
        Task(title: "Example Task 1", member: "Member Name 1", status: .notCompleted),
        Task(title: "Example Task 2", member: "Member Name 2", status: .notCompleted),
        Task(title: "Example Task 3", member: "Member Name 3", status: .notCompleted),
        Task(title: "Example Task 4", member: "Member Name 4", status: .onReview),
        Task(title: "Example Task 5", member: "Member Name 5", status: .onReview),
        Task(title: "Example Task 6", member: "Member Name 6", status: .completed),
        Task(title: "Example Task 7", member: "Member Name 7", status: .completed),
    ]
    
    static var chats = [
        Chat(name: "John", messages: Mock.messages, type: .owner),
        Chat(name: "Doe", messages: Mock.messages),
        Chat(name: "Kevin", messages: Mock.messages, type: .owner),
        Chat(name: "Dallian", messages: Mock.messages),
        Chat(name: "Gregorius", messages: Mock.messages),
        Chat(name: "Jeremy", messages: Mock.messages, type: .owner),
        Chat(name: "Raymond", messages: Mock.messages),
        Chat(name: "Metekohy", messages: Mock.messages),
        Chat(name: "Brandon", messages: Mock.messages, type: .owner),
        Chat(name: "Nicholas", messages: Mock.messages),
        Chat(name: "Marlim", messages: Mock.messages),
    ]
    
    static var messages = [
        Message(text: "Example message 1", time: "00:00", isUser: false),
        Message(text: "Example message 2", time: "01:00", isUser: true),
        Message(text: "Example message 3", time: "02:00", isUser: true),
        Message(text: "Example message 4", time: "03:00", isUser: false),
        Message(text: "Example message 5", time: "04:00", isUser: true),
        Message(text: "Example message 6", time: "05:00", isUser: false),
        Message(text: "Example message 7", time: "06:00", isUser: true),
    ]
    
    static var notifications = [
        Notification(desc: "A short description of the notification", projectName: "Project 1", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 2", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 3", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 4", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 5", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 6", date: Date.now),
        Notification(desc: "A short description of the notification", projectName: "Project 7", date: Date.now),
    ]
    
    static var accounts: [Account] = [
        Account(
            email: "john@gmail.com",
            password: "john@123",
            accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
            projectsJoined: Mock.projects,
            notifications: Mock.notifications,
            chats: Mock.chats
        ),
        Account(
            email: "kevin@gmail.com",
            password: "kevin@123",
            accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
            projectsJoined: Mock.projects,
            notifications: Mock.notifications,
            chats: Mock.chats
        ),
        Account(
            email: "gregorius@gmail.com",
            password: "gregorius@123",
            accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
            projectsJoined: Mock.projects,
            notifications: Mock.notifications,
            chats: Mock.chats
        ),
        Account(
            email: "brandon@gmail.com",
            password: "brandon@123",
            accountDetail: Mock.accountDetails[0], projectsOwned: Mock.projects,
            projectsJoined: Mock.projects,
            notifications: Mock.notifications,
            chats: Mock.chats
        ),
    ]

    
    static var tags = ["SwiftUI", "UIKit", "Vision", "SpriteKit", "CoreML", "AVFoundation"]
    
    static var accountDetails = [
        AccountDetail (
            name: "John",
            desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.",
            location: "Indonesia",
            bankAccount: "bankaccount",
            cvLink: "CVLink",
            skills: ["SwiftUI", "CoreML", "Vision"],
            educations: [
                Education(title: "BINUS University", company: "", startDate: Date.now, endDate: Date.now, desc: "Bachelor of Science - Data Science and Analytics"),
                Education(title: "National University of Singapore", company: "", startDate: Date.now, endDate: Date.now, desc: "Bachelor of Science - BS, Data Science and Analytics")
            ],
            experiences: [
                Experience(title: "Assistant Lab", company: "BINUS University", startDate: Date.now, endDate: Date.now, desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                Experience(title: "Junior Developer Intern", company: "Samsung Korea", startDate: Date.now, endDate: Date.now, desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            ]
        ),
    ]
}
