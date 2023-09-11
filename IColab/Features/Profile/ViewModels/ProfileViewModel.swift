//
//  ProfileViewModel.swift
//  IColab
//
//  Created by Kevin Dallian on 11/09/23.
//

import Foundation

class ProfileViewModel : ObservableObject {
    @Published var account : Account?
    
    init(){
        self.account = getAccount()
    }
    
    private func getAccount() -> Account{
        return Mock.accounts[0]
    }
}
