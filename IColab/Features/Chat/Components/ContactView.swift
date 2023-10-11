//
//  ContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct ContactView: View {
    var chat: Chat = MockChats.array[0]
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(.purple)
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
                        HStack {
                            Text(chat.title)
                                .font(.headline)
                            Text(chat.projectName)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                        
                        Text(chat.messages.first!.text)
                            .font(.footnote)
                    }
                    .frame(width: 240, alignment: .leading)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(chat.messages.first!.time, style: .time)
                            .font(.footnote)
                        if chat.isPinned {
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
