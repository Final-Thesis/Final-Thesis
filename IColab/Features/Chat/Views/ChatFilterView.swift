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
                FilterButtonView(text: "All")
                FilterButtonView(text: "Personal")
            }
            HStack {
                FilterButtonView(text: "Group")
                FilterButtonView(text: "Owner")
            }
            
            Text("Sort by")
                .font(.headline)
            HStack {
                FilterButtonView(text: "Date")
                FilterButtonView(text: "Project")
            }
            
            ButtonComponent(title: "Confirm", width: 360) {
                vm.filterChatType(chatType: chatType)
                
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
