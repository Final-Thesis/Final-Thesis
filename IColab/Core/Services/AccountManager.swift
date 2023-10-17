//
//  AccountManager.swift
//  IColab
//
//  Created by Kevin Dallian on 10/10/23.
//

import Foundation

class AccountManager : ObservableObject {
    static var shared = AccountManager()
    
    private init(){}

    @Published var account : Account?
    
    public func getAccount(uid: String) {
        if let foundAccount = Mock.accounts.first(where: { account in
            account.id == uid
        }) {
            account = foundAccount
        }else{
            print("Account not found")
        }
    }
}
