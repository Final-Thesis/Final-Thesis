//
//  HomeView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @State var searchText = ""
    var body: some View {
        VStack{
            SearchBar(searchText: $searchText){ search in
                homeViewModel.searchProject(searchTitle: search)
            }
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
