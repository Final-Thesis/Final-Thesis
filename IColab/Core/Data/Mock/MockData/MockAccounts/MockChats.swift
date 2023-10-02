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
        Chat(name: "John", messages: MockMessages.generateMessages(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Doe", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Kevin", messages: MockMessages.generateMessages(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Dallian", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Gregorius", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Jeremy", messages: MockMessages.generateMessages(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Raymond", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Metekohy", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Brandon", messages: MockMessages.generateMessages(), type: .owner, projectName: randomProjectTitle),
        Chat(name: "Nicholas", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Marlim", messages: MockMessages.generateMessages(), projectName: randomProjectTitle),
        Chat(name: "Dishcovery", messages: MockMessages.generateMessages(), type: .group, projectName: randomProjectTitle),
        Chat(name: "IColab", messages: MockMessages.generateMessages(), type: .group, projectName: randomProjectTitle),
        Chat(name: "Slipi", messages: MockMessages.generateMessages(), type: .group, projectName: randomProjectTitle),
    ]
}
