//
//  ProjectState.swift
//  IColab
//
//  Created by Kevin Dallian on 19/10/23.
//

import Foundation

enum ProjectState : String, CaseIterable{
    case notStarted = "Project not Started"
    case started = "Project Started"
    case overdue = "Project Overdue"
    case extended = "Project Extended"
    
    var symbol : String {
        var symbolString = ""
        switch self {
        case .notStarted:
            symbolString = "calendar.badge.clock"
        case .started:
            symbolString = ""
        case .overdue:
            symbolString = "calendar.badge.exclamationmark"
        case .extended:
            symbolString = "clock.arrow.2.circlepath"
        }
        return symbolString
    }
    
    public func description(date: Date?) -> String {
        var description = ""
        if let date = date {
            if self == .overdue {
                description = "Project will be cancelled by **\(date.formatted(date: .abbreviated, time: .omitted))**. Extend if you still want to continue."
            }else if self == .extended {
                description = "The project start date has been changed to **\(date.formatted(date: .abbreviated, time: .omitted))**. Press confirm to continue being part of the project."
            }
        }else{
            description = "The project hasn't reached it's start date yet, so it hasn't started."
        }
        return description
    }
}
