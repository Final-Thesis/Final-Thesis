//
//  MockAccountDetails.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockAccountDetails: Randomizeable {
    typealias Element = AccountDetail
    
    static var names: [String] = [
        "John",
        "Kevin",
        "Dallian",
        "Gregorius",
        "Jeremy",
        "Raymond",
        "Metekohy",
        "Brandon",
        "Nicholas",
        "Marlim",
    ]
    
    static var array: [AccountDetail] {
        var accountDetails : [AccountDetail] = []
        for name in names {
            let accountDetail = AccountDetail(
                name: name,
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
            )
            accountDetails.append(accountDetail)
        }
        return accountDetails
    }
    
}
