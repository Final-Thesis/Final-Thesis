//
//  MockAccounts.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockAccounts: Randomizeable {
    typealias Element = Account
    
    static var names: [String] = [
        "john",
        "kevin",
        "dallian",
        "gregorius",
        "jeremy",
        "raymond",
        "metekohy",
        "brandon",
        "nicholas",
        "marlim"
    ]
    
    static var array: [Account] = MockAccounts.initArray(count: names.count) {
        Account(
            email: "\(names.randomElement()!)@gmail.com",
            password: "\(names.randomElement()!)@123",
            accountDetail: MockAccountDetails.array[0]
        )
    }
}
