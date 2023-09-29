//
//  ProjectOverviewView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectOverviewView: View {
    @StateObject var vm: ProjectOverviewViewModel = ProjectOverviewViewModel(uid: Mock.accounts[1].id)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ZStack(alignment: .bottomLeading){
                        Rectangle()
                            .frame(height: 200)
                            .foregroundColor(Color("purple"))
                        VStack(alignment: .leading) {
                            Text(vm.getTestProject().title)
                                .font(.largeTitle)
                                .bold()
                            HStack{
                                ForEach(vm.getTestProject().tags, id: \.self){ tag in
                                    TagItem(tagText: tag)
                                }
                            }
                            Text(vm.getTestProject().desc)
                            
                        }
                        .padding()
                    }
                    CurrentMilestoneView()
                    Divider()
                        .background(.gray)
                    ProjectNavigationCardView()
                        .environmentObject(vm)
                }
            }
            .toolbarBackground(Color("purple"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Project Overview")
            .toolbar {
                //placeholder
                if true {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            EditProjectView()
                                .environmentObject(vm)
                        } label: {
                            Image(systemName: "pencil.circle")
                        }
                        .buttonStyle(.plain)

                    }
                }
                
            }
        }
        
    }
}

struct ProjectOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectOverviewView()
            .environmentObject(ProjectOverviewViewModel(uid: Mock.accounts[0].id))
            .preferredColorScheme(.dark)
    }
}
