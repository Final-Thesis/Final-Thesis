//
//  Chat.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

enum ChatType {
    case personal
    case owner
    case group
}

struct Chat: Identifiable {
    var id: UUID = UUID()
    var name: String
    var messages: [Message]
    var type: ChatType = .personal
}
