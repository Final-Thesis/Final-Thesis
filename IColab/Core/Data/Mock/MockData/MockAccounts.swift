//
//  MockAccounts.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockAccounts: Randomizeable {
    
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
    
    static func initAccount() -> [Account] {
        var accounts: [Account] = []
        for name in names {
            let accountDetail = MockAccountDetails.array.first {$0.name.lowercased() == name} ?? MockAccountDetails.array.randomElement()!
            accounts.append(Account(email: "\(name)@gmail.com", password: "\(name)@123", accountDetail: accountDetail))
        }
        
        return accounts
    }
    
    static var array: [Account] = initAccount()
}
