//
//  ChatListViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import Foundation

class ChatListViewModel: ObservableObject {
    @Published var account: Account?
    @Published var chats: [Chat] = []
    
    @Published var searchText : String = ""
    @Published var searchPressed : Bool = false
    
    init(uid: String){
        self.account = getAccount(uid: uid)
        self.chats = self.getChats()
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getTestProject() -> Project {
        return (account?.projectsOwned![1])!
    }
    
    func getChats() -> [Chat] {
        return account!.chats!
    }
    
    private func getSearchChats(searchTitle: String) -> [Chat] {
        if searchTitle.isEmpty{
            return self.getChats()
        }
        let allChats = self.getChats()
        let filteredChats = allChats.filter { chat in
            let chatLowerCased = chat.name.lowercased()
            return chatLowerCased.contains(searchTitle.lowercased())
        }
        return filteredChats
    }
    
    public func searchChats(searchTitle: String) {
        self.chats = getSearchChats(searchTitle: searchTitle)
    }
    
    public func filterChatType(chatType: ChatType) -> [Chat] {
        let allChats = self.getChats()
        let filteredChats = allChats.filter { chat in
            chat.type == chatType
            
        }
        return filteredChats
    }
}
