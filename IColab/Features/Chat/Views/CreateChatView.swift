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
            SearchView(
                array: $vm.projects,
                vm: SearchViewModel(array: vm.projects),
                hasFilter: false
            )
            ScrollView {
                GroupedContactView(projects: vm.projects)
                    .padding()
            }
        }
    }
}

#Preview {
    CreateChatView()
}
