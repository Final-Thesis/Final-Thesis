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
            title: "Project Title",
            owner: Account(
                name: "John Doe",
                email: "john.doe@binus.ac.id",
                password: "ImaPassword",
                bankAccount: "bankaccount",
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                cvLink: "CVLink"),
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
            title: "Project Title",
            owner: Account(
                name: "John Doe",
                email: "john.doe@binus.ac.id",
                password: "ImaPassword",
                bankAccount: "bankaccount",
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                cvLink: "CVLink"),
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
            owner: Account(
                name: "John Doe",
                email: "john.doe@binus.ac.id",
                password: "ImaPassword",
                bankAccount: "bankaccount",
                desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                cvLink: "CVLink"),
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
    
    static var accounts = [
        Account(
            name: "John Doe",
            email: "john.doe@binus.ac.id",
            password: "ImaPassword",
            bankAccount: "bankaccount",
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            cvLink: "CVLink"),
        Account(
            name: "Doe John",
            email: "doe.john@binus.ac.id",
            password: "ImaPassword",
            bankAccount: "bankaccount",
            desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            cvLink: "cvlink")
    ]
    
    public func setOwner(){
        Mock.projects[0].setOwner(owner: Mock.accounts[0])
    }
}
