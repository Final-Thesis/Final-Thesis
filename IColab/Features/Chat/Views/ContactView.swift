//
//  ContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct ContactView: View {
    var chat: Chat = MockChats.chats[0]
    var isPinned: Bool = true
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.blue)
                if chat.type == .owner {
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "crown.fill")
                                .font(.caption2)
                            
                        }
                        Spacer()
                    }
                }
                
                
            }
            .frame(width: 48, height: 48)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(chat.name)
                            .font(.headline)
                        Text(chat.messages.first!.text)
                            .font(.footnote)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(chat.messages.first!.time)
                            .font(.footnote)
                        if isPinned {
                            Image(systemName: "pin.circle")
                                .font(.caption2)
                        }
                        
                        Divider()
                            
                    }
                }
                Divider()
                    .background(.white)
            }
            .padding(8)
            
            
        }
        .padding(4)
    }
}

#Preview {
    ContactView()
}
