//
//  ChatListViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import Foundation

enum ChatFilterType: String {
    case all = "All"
    case personal = "Personal"
    case owner = "Owner"
    case group = "Group"
    
    case date = "Date"
    case project = "Project"
}

class ChatListViewModel: ObservableObject {
    @Published var account: Account?
    @Published var chats: [Chat] = []
    
    @Published var searchText : String = ""
    @Published var searchPressed : Bool = false
    
    @Published var filterType: ChatFilterType = .all
    
    init(uid: String){
        self.account = getAccount(uid: uid)
        self.chats = self.getChats()
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getChats() -> [Chat] {
        var chats = account!.chats!
        
        chats.sort { $0.isPinned && !$1.isPinned }
        
        return chats
    }
    
    func sortChat() -> [Chat] {
        var chats = self.getChats()
        
        chats.sort { $0.isPinned && !$1.isPinned }
        
        return chats
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
    
    public func filterChats(filterType: ChatFilterType) {
        switch filterType {
            case .group:
                self.chats = filterChatType(chatType: .group)
            case .owner:
                self.chats = filterChatType(chatType: .owner)
            case .personal:
                self.chats = filterChatType(chatType: .personal)
            default:
                self.chats = self.getChats()
        }
        
    }
    
    public func pinChat(chat: Chat) {
        let chats = account!.chats!
        if let index = chats.firstIndex(of: chat) {
            //self.chats[index].isPinned.toggle()
            account!.chats![index].isPinned.toggle()
            
            self.objectWillChange.send()
        }
    }
}
