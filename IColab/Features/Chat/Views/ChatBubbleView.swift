//
//  ChatBubbleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 01/10/23.
//

import SwiftUI

struct ChatBubbleView: View {
    var message: Message = Message(text: "Example text", time: "00:00", isUser: false)
    
    var body: some View {
        if message.isUser {
            HStack {
                Text(message.text)
                    .frame(maxWidth: 240)
                    .padding(24)
                    .background(.purple)
                    .cornerRadius(12, corners: .bottomLeft)
                    .cornerRadius(12, corners: .topRight)
                    .cornerRadius(12, corners: .topLeft)
            }
        }
        else {
            HStack {
                Circle()
                    .frame(width: 48)
                
                Text(message.text)
                    .frame(maxWidth: 240)
                    .padding(24)
                    .background(Color("gray"))
                    .cornerRadius(12, corners: .bottomLeft)
                    .cornerRadius(12, corners: .bottomRight)
                    .cornerRadius(12, corners: .topRight)
            }
        }
    }
}

#Preview {
    ChatBubbleView()
}
