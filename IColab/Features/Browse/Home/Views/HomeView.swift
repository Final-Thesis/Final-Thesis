//
//  HomeView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @FocusState var isInputActive: Bool
    var body: some View {
        VStack{
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
            if homeViewModel.projects.isEmpty{
                VStack{
                    Spacer()
                    Image(systemName: "menucard")
                        .font(.system(size: 64))
                    Text("No Projects to be shown")
                        .font(.callout.bold())
                    Spacer()
                }
            }else{
                ScrollView{
                    ForEach(homeViewModel.projects){ project in
                        NavigationLink {
                            ProjectDetailView(project: project)
                        } label: {
                            ProjectCard(project: project)
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .navigationTitle("Browse")
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done"){
                    isInputActive = false
                }
            }
        }
        .sheet(isPresented: $homeViewModel.searchPressed) {
            FilterSheetView()
                .presentationDetents([.fraction(0.5), .large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            HomeView()
        }
    }
}
