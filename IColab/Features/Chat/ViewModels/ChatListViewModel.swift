//
//  ChatListViewModel.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import Foundation

enum ChatFilterType: String, CaseIterable {
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
    @Published var projects: [Project] = []
    
    @Published var filterType: ChatFilterType = .all
    
    init(uid: String){
        self.account = getAccount(uid: uid)
        self.chats = self.getChats()
        self.projects = self.getProjects()
        
    }
    
    private func getAccount(uid: String) -> Account?{
        return Mock.accounts.first { account in
            account.id == uid
        }
    }
    
    func getProjects() -> [Project] {
        return account!.projectsOwned!
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
    
    public func sortByDate() -> [Chat] {
        var chats = self.getChats()
        
        chats.sort {
            $0.messages.first!.time > $1.messages.first!.time
        }
        
        return chats
    }
    
    public func sortByProject() -> [Chat] {
        var chats = self.getChats()
        
        chats.sort {
            $0.projectName < $1.projectName
        }
        
        return chats
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
            case .date:
                self.chats = self.sortByDate()
            case .project:
                self.chats = self.sortByProject()
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
    
    public func sendMessage(chat: Chat, text: String) -> Chat {
        let index = account!.chats!.firstIndex(of: chat)!
        
        account!.chats![index].sendMessage(message: Message(text: text, time: Date.now, isUser: true))
        self.chats = self.getChats()
        
        return account!.chats![index]
    }
}
