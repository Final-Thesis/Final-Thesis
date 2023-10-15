//
//  ChatListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatListView: View {
    @StateObject var vm = ChatListViewModel(uid: Mock.accounts[1].id)
    
    @State var filterToggle: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Chats")
                    .font(.largeTitle)
                    .bold()
                NavigationLink {
                    CreateChatView()
                        .environmentObject(vm)
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.largeTitle)
                }
                
                Spacer()
            }
            SearchView(
                array: $vm.chats,
                vm: SearchViewModel(array: vm.chats),
                filterView: AnyView(
                    ChatFilterView()
                        .environmentObject(vm)
                )
            )

            if vm.chats.isEmpty {
                Spacer()
                EmptyDataView(icon: "envelope.open.fill", title: "No Message Yet", desc: "Join a project first to start chatting with someone")
            }
            else {
                ScrollView {
                    ForEach(vm.chats) { chat in
                        NavigationLink {
                            ChatView(chat: chat)
                                .environmentObject(vm)
                        } label: {
                            ContactView(chat: chat)
                        }
                        .contextMenu(menuItems: {
                            Button {
                                vm.pinChat(chat: chat)
                            } label: {
                                if chat.isPinned {
                                    Label("Unpin Chat", systemImage: "pin.slash.fill")
                                }
                                else {
                                    Label("Pin Chat", systemImage: "pin.fill")
                                }
                            }
                        })
                    }
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        ChatListView()
    }
}
