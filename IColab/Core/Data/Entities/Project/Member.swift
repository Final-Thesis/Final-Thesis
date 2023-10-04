//
//  Member.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct Member: Identifiable {
    let id: UUID = UUID()
    
    var account: Account
    var role: Role
}
