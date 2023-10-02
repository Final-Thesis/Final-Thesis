//
//  ChatFilterView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct ChatFilterView: View {
    @EnvironmentObject var vm: ChatListViewModel
    @State var chatType: ChatType = .personal
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Filter by")
                .font(.headline)
            HStack {
                FilterButtonView(filterType: .all)
                FilterButtonView(filterType: .personal)
            }
            HStack {
                FilterButtonView(filterType: .owner)
                FilterButtonView(filterType: .group)
            }
            
            Text("Sort by")
                .font(.headline)
            HStack {
                FilterButtonView(filterType: .date)
                FilterButtonView(filterType: .project)
            }
            
            ButtonComponent(title: "Confirm", width: 360) {
                vm.filterChats(filterType: vm.filterType)
                
                vm.objectWillChange.send()
                self.presentationMode.wrappedValue.dismiss()
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ChatFilterView()
}
