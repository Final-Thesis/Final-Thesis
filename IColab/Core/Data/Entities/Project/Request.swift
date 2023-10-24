//
//  Request.swift
//  IColab
//
//  Created by Kevin Dallian on 17/10/23.
//

import Foundation

struct Request {
    var id = UUID().uuidString
    var worker : Account
    var role : Role
    var date : Date
}

enum RequestState {
    case notReviewed
    case approved
    case rejected
}
