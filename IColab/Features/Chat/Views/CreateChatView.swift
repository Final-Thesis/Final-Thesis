//
//  CreateChatView.swift
//  IColab
//
//  Created by Jeremy Raymond on 04/10/23.
//

import SwiftUI

struct CreateChatView: View {
    @EnvironmentObject var vm: ChatListViewModel
    @FocusState var isInputActive: Bool
    
    @State var filterToggle: Bool = false
    
    var body: some View {
        VStack {
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
            ScrollView {
                GroupedContactView(projects: vm.getProjects())
                    .padding()
            }
        }
    }
}

#Preview {
    CreateChatView()
}
