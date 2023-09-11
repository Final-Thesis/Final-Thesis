//
//  Account.swift
//  IColab
//
//  Created by Kevin Dallian on 03/09/23.
//

import Foundation

struct Account: Hashable {
    let id = UUID().uuidString
    var name : String
    var email : String
    var location : String
    var password : String
    var bankAccount : String
    var desc : String
    var projectsOwned : [Project]?
    var cvLink : String
}
