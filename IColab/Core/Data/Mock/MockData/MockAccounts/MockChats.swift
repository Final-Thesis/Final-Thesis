//
//  MockChats.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockChats {
    static var randomProjectTitle: String = MockProjects.projects.randomElement()!.title
    
    static var chats: [Chat] = [
        Chat(name: "John", messages: MockMessages.generateArray(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Doe", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Kevin", messages: MockMessages.generateArray(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Dallian", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Gregorius", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Jeremy", messages: MockMessages.generateArray(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Raymond", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Metekohy", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Brandon", messages: MockMessages.generateArray(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Nicholas", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Marlim", messages: MockMessages.generateArray(), projectName: randomProjectTitle),
        Chat(name: "Dishcovery", messages: MockMessages.generateArray(), type: .group, projectName: randomProjectTitle),
        Chat(name: "IColab", messages: MockMessages.generateArray(), type: .group, projectName: randomProjectTitle),
        Chat(name: "Slipi", messages: MockMessages.generateArray(), type: .group, projectName: randomProjectTitle),
    ]
}
