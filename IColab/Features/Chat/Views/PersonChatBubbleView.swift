//
//  PersonChatBubbleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct PersonChatBubbleView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48)
            
            Text("Some example text message. Make it more than one line.")
                .frame(maxWidth: 240)
                .padding(24)
                .background(Color("gray"))
                .cornerRadius(12, corners: .bottomLeft)
                .cornerRadius(12, corners: .bottomRight)
                .cornerRadius(12, corners: .topRight)
        }
    }
}

#Preview {
    PersonChatBubbleView()
}
