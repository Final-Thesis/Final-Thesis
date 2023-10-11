//
//  Chat.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

enum ChatType: CaseIterable {
    case personal
    case owner
    case group
}

struct Chat: Identifiable, Equatable, Searchable {
    let id: UUID = UUID()
    
    var title: String
    var messages: [Message]
    var type: ChatType = .personal
    
    var projectName: String
    
    var isPinned: Bool = false
    
    mutating func sendMessage(message: Message) {
        messages.append(message)
    }
    
    static func == (lhs: Chat, rhs: Chat) -> Bool {
        return lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.type == rhs.type
    }
}
