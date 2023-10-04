//
//  MockChats.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockChats: Randomizeable {
    typealias Element = Chat
    
    static var randomProjectTitle: String = MockProjects.projects.randomElement()!.title
    
    static var array: [Element] = initArray()
    
    static func initArray() -> [Element] {
        var array: [Element] = []
        
        for name in names {
            array.append(Element(name: name, messages: MockMessages.generateArray(), type: ChatType.allCases.randomElement()!, projectName: randomProjectTitle))
        }
        
        return array
    }
    
    static var names: [String] = [
        "John",
        "Doe",
        "Kevin",
        "Dallian",
        "Gregorius",
        "Jeremy",
        "Raymond",
        "Metekohy",
        "Brandon",
        "Nicholas",
        "Marlim",
        "Dishcovery",
        "Icolab",
        "Slipi",
    ]
}
