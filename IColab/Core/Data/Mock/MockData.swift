//
//  Mock.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Mock{
    static var projects = [
        Project(
            title: "Front-end Project",
            owner: Mock.accounts[0],
            role: "Front-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10000),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false),
                         Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false)
            ]
        ),
        Project(
            title: "Back-end Project",
            owner: Mock.accounts[0],
            role: "Back-end",
            requirements: ["3 years SwiftUI experience", "3 years UIKit experience"],
            tags: ["SwiftUI", "CoreML", "Vision"],
            startDate: Date.now,
            endDate: Date.now.addingTimeInterval(10),
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            milestones: [
                Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false),
                Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false)
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
                Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false),
                Milestone(name: "Milestone Title", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false)
            ]
        )
    ]
    
    static var milestones = [
        Milestone(name: "Milestone Title 1", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false),
        Milestone(name: "Milestone Title 2", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false),
        Milestone(name: "Milestone Title 3", nominal: 100000, desc: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.", endDate: Date.now, isAchieved: false)
    ]
    
    static var accounts = [
        Account(
            email: "john.doe@binus.ac.id",
            location: "Indonesia",
            password: "ImaPassword",
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            cvLink: "CVLink",
            accountDetail: Mock.accountDetails[0],
            notifications: [
                Notification(desc: "A short description of the notification", projectName: "Project 1", date: Date.now),
                Notification(desc: "A short description of the notification", projectName: "Project 1", date: Date.now)
            ]
        ),
        Account(
            name: "Doe John",
            email: "doe.john@binus.ac.id",
            location: "Indonesia",
            password: "ImaPassword",
            bankAccount: "bankaccount",
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            cvLink: "cvlink")
    ]
    
    static var tags = ["SwiftUI", "UIKit", "Vision", "SpriteKit", "CoreML", "AVFoundation"]
    
    static var accountDetails = [
        AccountDetail(
            name: "John Doe",
            location: "Indonesia",
            bankAccount: "bankaccount",
            skills: ["SwiftUI", "CoreML", "Vision"],
            educations: [Education(title: "BINUS University", company: "BINUS", startDate: Date.now, endDate: Date.now, desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")],
            experiences: [Experience(title: "Assistant Lab", company: "BINUS University", startDate: Date.now, endDate: Date.now, desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")]
        )
    ]
}
