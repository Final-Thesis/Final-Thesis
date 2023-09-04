//
//  Project.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import Foundation

struct Project : Identifiable{
    let id = UUID().uuidString
    var title : String
    var owner : Account?
    var role : String
    var requirements : [String]
    var tags : [String]
    var startDate : Date
    var endDate : Date
    var desc : String
    
    public mutating func setOwner(owner : Account){
        self.owner = owner
    }
}
