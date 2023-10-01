//
//  MockMessages.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct MockMessages {
    static var messages: [Message] = [
        Message(text: "Example message 1", time: "00:00", isUser: false),
        Message(text: "Example message 2", time: "01:00", isUser: true),
        Message(text: "Example message 3", time: "02:00", isUser: true),
        Message(text: "Example message 4", time: "03:00", isUser: false),
        Message(text: "Example message 5", time: "04:00", isUser: true),
        Message(text: "Example message 6", time: "05:00", isUser: false),
        Message(text: "Example message 7", time: "06:00", isUser: true),
    ]
}
