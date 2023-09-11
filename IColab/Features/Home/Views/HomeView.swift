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
            }.padding(.horizontal, 10)
            ScrollView{
                ForEach(homeViewModel.projects){ project in
                    NavigationLink(value: project) {
                        ProjectCard(project: project)
                            .padding(.top, 10)
                    }
                    .buttonStyle(.plain)
                }
            }
            .navigationDestination(for: Project.self, destination: { project in
                ProjectDetailView(project: project)
            })
            .padding(.horizontal, 10)
            .navigationTitle("Home")
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            HomeView()
        }
    }
}
