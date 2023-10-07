//
//  ProjectMainView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct ProjectMainView: View {
    @StateObject var vm: ProjectMainViewModel = ProjectMainViewModel(uid: Mock.accounts[0].id)
    
    @State var searchText: String = ""
    @State var picker: Int = 1
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Projects")
                        .font(.largeTitle)
                        .bold()
                    Image(systemName: "plus.circle")
                        .font(.largeTitle)
                    Spacer()
                }
                HStack {
                    SearchBar(searchText: $searchText, action: { _ in print("search")})
                    Button(
                        action: {print("Filter")},
                        label: {
                            Image(systemName: "line.3.horizontal.circle")
                            .font(.title)
                        }
                    )
                    .buttonStyle(.plain)
                }
            }
            .padding()
            
            Picker("Project Picker", selection: $picker) {
                Text("Joined Project").tag(1)
                Text("Owned Project").tag(2)
            }
            .pickerStyle(.segmented)
            .padding()
            
            ScrollView {
                if picker == 1 {
                    ForEach(vm.account!.projectsJoined!) { project in
                        NavigationLink {
                            ProjectOverviewView(project: project)
                        } label: {
                            ProjectMainCardView(project: project)
                        }
                    }
                }
                else {
                    ForEach(vm.account!.projectsOwned!) { project in
                        NavigationLink {
                            ProjectOverviewView(project: project)
                        } label: {
                            ProjectMainCardView(project: project)
                        }
                    }
                }
            }
            .padding()
        }
        
        .padding()
        
    }
}

#Preview {
    ProjectMainView()
        .preferredColorScheme(.dark)
}

