//
//  ChatListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatListView: View {
    @StateObject var vm = ChatListViewModel(uid: Mock.accounts[1].id)
    @FocusState var isInputActive: Bool
    
    @State var filterToggle: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Chats")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
                Spacer()
            }
            HStack{
                SearchBar(searchText: $vm.searchText){ search in
                    vm.searchChats(searchTitle: search)
                }
                .focused($isInputActive)
                Button {
                    filterToggle.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal, 10)
            .padding()
            if vm.chats.isEmpty {
                Spacer()
                VStack(alignment: .center) {
                    Image(systemName: "envelope.open.fill")
                        .font(.largeTitle)
                    Text("No Message Yet")
                        .font(.headline)
                    Text("Join a project first to start chatting with someone")
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            else {
                ScrollView {
//                    ForEach(0..<vm.getChats().count, id: \.self) { i in
//                        NavigationLink {
//                            ChatView(chat: vm.chats[i])
//                        } label: {
//                            ContactView(chat: vm.chats[i])
//                        }
//                        .contextMenu(menuItems: {
//                            Button {
//                                vm.pinChat(index: i)
//                            } label: {
//                                if !vm.chats[i].isPinned {
//                                    Text("Pin Chat")
//                                }
//                                else {
//                                    Text("Unpin Chat")
//                                }
//                            }
//                        })
//                    }
                    ForEach(vm.chats) { chat in
                        NavigationLink {
                            ChatView(chat: chat)
                        } label: {
                            ContactView(chat: chat)
                        }
                        .contextMenu(menuItems: {
                            Button {
                                vm.pinChat(chat: chat)
                            } label: {
                                if chat.isPinned {
                                    Text("Unpin Chat")
                                }
                                else {
                                    Text("Pin Chat")
                                }
                            }
                        })
                    }
                }
            }
            
            Spacer()
        }
        .sheet(isPresented: $filterToggle, content: { 
            ChatFilterView()
                .environmentObject(vm)
                .presentationDetents([.fraction(0.4)])
                .presentationDragIndicator(.visible)
        })
//        .toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                Button {
//                    // Your button action here
//                } label: {
//                    // your button label here
//                    Text("Add")
//                }
//            }
//                    
//        }
        
    }
}

#Preview {
    NavigationStack {
        ChatListView()
    }
}
