//
//  MockMessages.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockMessages: Randomizeable {
    
    static var texts: [String] = [
        "Example message 1",
        "Example message 2",
        "Example message 3",
        "Example message 4",
        "Example message 5",
        "Example message 6",
        "Example message 7",
        "Example message 8",
        "Example message 9",
        "Example message 10",
        "Example message 11",
        "Example message 12",
    ]
    
    static var array: [Message] = MockMessages.initArray(count: 12) {
        return Message(text: texts.randomElement()!, time: Date.now.addingTimeInterval(ranNum()), isUser: Bool.random())
    }
    
    static func ranNum() -> Double {
        return Double(Int.random(in: 1000..<30000))
    }
    
    static func initArray() -> [Message] {
        var array: [Message] = []
        
        for text in texts {
            array.append(Message(text: text, time: Date.now.addingTimeInterval(ranNum()), isUser: Bool.random()))
        }
        
        return array
    }
}
