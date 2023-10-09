//
//  Notification.swift
//  IColab
//
//  Created by Kevin Dallian on 18/09/23.
//

import Foundation

struct Notification : Identifiable, Equatable {
    var id = UUID().uuidString
    var desc : String
    var projectName : String
    var date : Date
    var projectImage : String?
}
