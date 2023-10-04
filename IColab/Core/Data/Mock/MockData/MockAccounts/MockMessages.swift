//
//  MockMessages.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockMessages: Randomizeable {
    static var array: [Message] = [
        Message(text: "Example message 1", time: Date.now, isUser: false),
        Message(text: "Example message 2", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 3", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 4", time: Date.now.addingTimeInterval(ranNum()), isUser: false),
        Message(text: "Example message 5", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 6", time: Date.now.addingTimeInterval(ranNum()), isUser: false),
        Message(text: "Example message 7", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 8", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 9", time: Date.now.addingTimeInterval(ranNum()), isUser: false),
        Message(text: "Example message 10", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
        Message(text: "Example message 11", time: Date.now.addingTimeInterval(ranNum()), isUser: false),
        Message(text: "Example message 12", time: Date.now.addingTimeInterval(ranNum()), isUser: true),
    ]
    
    static func ranNum() -> Double {
        return Double(Int.random(in: 1000..<30000))
    }
    
    static func generateMessages() -> [Message] {
        var messages: [Message] = []
        
        for _ in 0...Int.random(in: 5..<10) {
            messages.append(self.array.randomElement()!)
        }
        
        return messages
    }
}
