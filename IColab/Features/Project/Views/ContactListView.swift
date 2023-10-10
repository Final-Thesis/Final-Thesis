//
//  ContactListView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ContactListView: View {
    @EnvironmentObject var vm: ProjectOverviewViewModel
    var project: Project
    
    @StateObject var homeViewModel = HomeViewModel()
    @FocusState var isInputActive: Bool
    
    var body: some View {
        VStack {
            HStack{
                SearchBar(searchText: $homeViewModel.searchText){ search in
                    homeViewModel.searchProject(searchTitle: search)
                }
                .focused($isInputActive)
                Button {
                    homeViewModel.searchPressed.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal, 10)
            ScrollView {
                ProjectMemberContactView(title: "Members", project: project)
            }
            .padding()
            
            Spacer()
        }
        .padding()
        
    }
}

//struct ContactListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactListView()
//            .preferredColorScheme(.dark)
//    }
//}
