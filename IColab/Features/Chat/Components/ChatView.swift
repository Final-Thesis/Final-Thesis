//
//  ChatView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatView: View {
    var chat: Chat
    
    var body: some View {
        VStack {
            ForEach(chat.messages) { message in
                ChatBubbleView(message: message)
            }
            Spacer()
        }
        //.navigationTitle("Project Description")
        .toolbar {
            //placeholder
            if true {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        
                    } label: {
                        Image(systemName: "pencil")
                    }
                    .buttonStyle(.plain)

                }
            }
            
        }
    }
}

#Preview {
    ChatView(chat: Mock.chats[0])
}
