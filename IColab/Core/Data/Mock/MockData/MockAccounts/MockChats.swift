//
//  MockChats.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockChats {
    static var chats: [Chat] = [
        Chat(name: "John", messages: MockMessages.generateMessages(), type: .owner, projectName: randomizeProjectTitle()),
        Chat(name: "Doe", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Kevin", messages: MockMessages.generateMessages(), type: .owner, projectName: randomizeProjectTitle()),
        Chat(name: "Dallian", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Gregorius", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Jeremy", messages: MockMessages.generateMessages(), type: .owner, projectName: randomizeProjectTitle()),
        Chat(name: "Raymond", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Metekohy", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Brandon", messages: MockMessages.generateMessages(), type: .owner, projectName: randomizeProjectTitle()),
        Chat(name: "Nicholas", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Marlim", messages: MockMessages.generateMessages(), projectName: randomizeProjectTitle()),
        Chat(name: "Dishcovery", messages: MockMessages.generateMessages(), type: .group, projectName: randomizeProjectTitle()),
        Chat(name: "IColab", messages: MockMessages.generateMessages(), type: .group, projectName: randomizeProjectTitle()),
        Chat(name: "Slipi", messages: MockMessages.generateMessages(), type: .group, projectName: randomizeProjectTitle()),
    ]
    
    static func randomizeProjectTitle() -> String {
        return MockProjects.projects.randomElement()!.title
    }
}
