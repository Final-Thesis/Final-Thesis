//
//  Message.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import Foundation

struct Message: Identifiable, Equatable {
    var id: UUID = UUID()
    var text: String;
    var time: Date;
    var isUser: Bool = true
}
