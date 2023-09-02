//
//  HomeView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        ScrollView{
            ForEach(homeViewModel.projects){ project in
                ProjectCard(project: project)
                    .padding(.bottom, 20)
            }
        }.padding(.horizontal, 10)
            .navigationTitle("Home")
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
