//
//  ChatListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 30/09/23.
//

import SwiftUI

struct ChatTestData: Identifiable {
    var id: UUID = UUID()
    var name: String
    var text: String
    var time: String
    
    static var testData : [ChatTestData] = [
        ChatTestData(name: "Kevin", text: "Example Text", time: "00:00"),
        ChatTestData(name: "Dallian", text: "Example Text", time: "01:00"),
        ChatTestData(name: "Gregorius", text: "Example Text", time: "02:00"),
        ChatTestData(name: "Jeremy", text: "Example Text", time: "03:00"),
        ChatTestData(name: "Raymond", text: "Example Text", time: "07:00"),
        ChatTestData(name: "Metekohy", text: "Example Text", time: "12:00"),
        ChatTestData(name: "Brandon", text: "Example Text", time: "16:00"),
        ChatTestData(name: "Nicholas", text: "Example Text", time: "03:00"),
        ChatTestData(name: "Marlim", text: "Example Text", time: "02:00"),
    ]
}

struct ChatListView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @FocusState var isInputActive: Bool
    
    @State var filterToggle: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                SearchBar(searchText: $homeViewModel.searchText){ search in
                    homeViewModel.searchProject(searchTitle: search)
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
                ForEach(ChatTestData.testData) { chat in
                    ContactView()
                }
            }
            
            
            Spacer()
        }
        .sheet(isPresented: $filterToggle, content: { 
            ChatFilterView()
                .presentationDetents([.medium])
        })
        .navigationTitle("Chats")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    // Your button action here
                } label: {
                    // your button label here
                    Text("Add")
                }
            }
                    
        }
        
    }
}

#Preview {
    NavigationStack {
        ChatListView()
    }
}
