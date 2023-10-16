//
//  ChatBubbleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import SwiftUI

struct ChatBubbleView: View {
    var message: Message = Message(text: "Example text", time: Date.now, isUser: true)
    
    var body: some View {
        if message.isUser {
            HStack {
                Spacer()
                Text(message.text)
                    .frame(width: 240, alignment: .topTrailing)
                    .padding(16)
                    .background(.purple)
                    .cornerRadius(12, corners: [.topLeft, .topRight, .bottomLeft])
                    .padding(.top, 12)
            }
        }
        else {
            HStack {
                VStack {
                    Circle()
                        .frame(width: 48)
                    Spacer()
                }
                VStack(alignment: .leading) {
                    Rectangle()
                        .foregroundStyle(.clear)
                        .frame(maxHeight: 20)
                    Text(message.text)
                        .frame(width: 240, alignment: .topLeading)
                        .padding(16)
                        .background(Color("gray"))
                        .cornerRadius(12, corners: [.bottomLeft, .bottomRight, .topRight])
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ChatBubbleView()
}
