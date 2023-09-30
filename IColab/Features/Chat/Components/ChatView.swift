//
//  ChatView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @FocusState var isInputActive: Bool
    
    var body: some View {
        VStack {
            PersonChatBubbleView()
            UserChatBubbleView()
            PersonChatBubbleView()
            Spacer()
        }
        .navigationTitle("Project Description")
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
    ChatView()
}
