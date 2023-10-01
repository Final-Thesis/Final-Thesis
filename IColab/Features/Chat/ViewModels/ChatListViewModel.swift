//
//  ChatListViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import Foundation

class ChatListViewModel: ObservableObject {
    @Published var account: Account?
    
    init(uid: String){
        self.account = getAccount(uid: uid)
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getTestProject() -> Project {
        return (account?.projectsOwned![1])!
    }
    
}
