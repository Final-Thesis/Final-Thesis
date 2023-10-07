//
//  ProjectOverviewView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectOverviewView: View {
    var project: Project
    @StateObject var vm: ProjectOverviewViewModel = ProjectOverviewViewModel(uid: Mock.accounts[0].id)
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            self.dismiss()
                        }, label: {
                            Image(systemName: "arrow.left")
                                .font(.title)
                        })
                        Spacer()
                        if true {
                            NavigationLink {
                                EditProjectView()
                                    .environmentObject(vm)
                            } label: {
                                Image(systemName: "pencil.circle")
                                    .font(.title)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.vertical)
                    Text(project.title)
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        ForEach(project.tags, id: \.self){ tag in
                            TagItem(tagText: tag)
                        }
                    }
                    Text(project.desc)
                }
                .padding()
                .padding(.top, 32)
                .background(.purple)
                
                VStack {
                    CurrentMilestoneView(goal: vm.getCurrentGoal())
                    Divider()
                        .background(.gray)
                    ProjectNavigationCardView()
                        .environmentObject(vm)
                }
            }
            .toolbar(.hidden)
            .ignoresSafeArea(edges: .top)
        }
        
    }
}

//struct ProjectOverviewView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack {
//            ProjectOverviewView()
//                .environmentObject(ProjectOverviewViewModel(uid: Mock.accounts[0].id))
//                .preferredColorScheme(.dark)
//        }
//        
//    }
//}
