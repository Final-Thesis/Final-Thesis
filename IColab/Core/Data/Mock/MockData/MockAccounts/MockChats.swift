//
//  MockChats.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockChats {
    static var chats: [Chat] = [
        Chat(name: "John", messages: MockMessages.messages, type: .owner),
        Chat(name: "Doe", messages: MockMessages.messages),
        Chat(name: "Kevin", messages: MockMessages.messages, type: .owner),
        Chat(name: "Dallian", messages: MockMessages.messages),
        Chat(name: "Gregorius", messages: MockMessages.messages),
        Chat(name: "Jeremy", messages: MockMessages.messages, type: .owner),
        Chat(name: "Raymond", messages: MockMessages.messages),
        Chat(name: "Metekohy", messages: MockMessages.messages),
        Chat(name: "Brandon", messages: MockMessages.messages, type: .owner),
        Chat(name: "Nicholas", messages: MockMessages.messages),
        Chat(name: "Marlim", messages: MockMessages.messages),
        Chat(name: "Dishcovery", messages: MockMessages.messages, type: .group),
        Chat(name: "IColab", messages: MockMessages.messages, type: .group),
        Chat(name: "Slipi", messages: MockMessages.messages, type: .group),
    ]
}
