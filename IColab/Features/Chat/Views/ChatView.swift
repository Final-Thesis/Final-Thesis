//
//  ChatView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatView: View {
    @EnvironmentObject var vm: ChatListViewModel
    @State var chat: Chat
    var turn: Bool = true
    
    @State var text: String = ""
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    ForEach(chat.messages) { message in
                        ChatBubbleView(message: message)
                    }
                    Spacer()
                }
            }
            VStack {
                Spacer()
                HStack {
                    TextField("Enter your message...", text: $text)
                        .padding()
                        .background(Color("gray"))
                        .cornerRadius(12)
                    Button(action: {
                        chat = vm.sendMessage(chat: chat, text: text)
                        vm.objectWillChange.send()
                    }, label: {
                        Image(systemName: "paperplane.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                    })
                    
                }
                .padding(24)
            }
            
        }
        .toolbar {
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
