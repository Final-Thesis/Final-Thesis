//
//  ProfileViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import Foundation

class ProfileViewModel : ObservableObject {
    @Published var account : Account?

    init(uid: String){
        self.account = getAccount(uid: uid)
    }
    
    private func getAccount(uid: String) -> Account{
        return Mock.accounts.first { account in
            account.id == uid
        }!
    }
}
