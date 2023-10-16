//
//  ResourceRequirementView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ResourceRequirementView: View {
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
                } 
                label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal, 10)
            .padding()
            ScrollView {
                ProjectButtonView(icon: "newspaper.circle", title: "Project Requirement", description: "Pdf")
                ProjectButtonView(icon: "folder.circle", title: "Class Diagram", description: "Diagram")
                ProjectButtonView(icon: "newspaper.circle", title: "Project Guideline", description: "Pdf")
                ProjectButtonView(icon: "link.circle", title: "Server", description: "Url")
            }
            
            
            Spacer()
        }
        
    }
}

struct ResourceRequirementView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceRequirementView()
            .preferredColorScheme(.dark)
    }
}
