//
//  UserChatBubbleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct UserChatBubbleView: View {
    var body: some View {
        HStack {
            Text("Some example text message. Make it more than one line.")
                .frame(maxWidth: 240)
                .padding(24)
                .background(.purple)
                .cornerRadius(12, corners: .bottomLeft)
                .cornerRadius(12, corners: .topRight)
                .cornerRadius(12, corners: .topLeft)
        }
    }
}

#Preview {
    UserChatBubbleView()
}
