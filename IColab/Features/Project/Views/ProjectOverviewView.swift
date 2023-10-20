//
//  ProjectOverviewView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectOverviewView: View {
    @StateObject var vm: ProjectOverviewViewModel
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
                    Text(vm.project.title)
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        ForEach(vm.project.tags, id: \.self){ tag in
                            TagItem(tagText: tag, colorBackground: .black)
                        }
                    }
                    Text(vm.project.desc)
                }
                .padding()
                .padding(.top, 32)
                .background(Color(.purple))
                
                VStack {
                    switch vm.project.projectState {
                    case .notStarted:
                        ProjectStatusView()
                            .environmentObject(vm)
                    case .started:
                        CurrentMilestoneView(goal: vm.getCurrentGoal())
                        Divider()
                            .background(.gray)
                        ProjectNavigationCardView()
                            .environmentObject(vm)
                    case .overdue:
                        ProjectStatusView()
                            .environmentObject(vm)
                        Button("Extend"){
                            print("Extend")
                        }
                    case .extended:
                        ProjectStatusView()
                            .environmentObject(vm)
                        Button("Confirm"){
                            print("Confirm")
                        }
                    }
                }
            }
            .toolbar(.hidden)
            .ignoresSafeArea(edges: .top)
        }
        
    }
}

#Preview {
    ProjectOverviewView(vm: ProjectOverviewViewModel(project: Mock.projects[0]))
        .accentColor(.primary)
}
