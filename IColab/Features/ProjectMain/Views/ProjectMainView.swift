//
//  ProjectMainView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct ProjectMainView: View {
    @StateObject var vm: ProjectMainViewModel = ProjectMainViewModel(uid: Mock.accounts[0].id)
    
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
                
                switch vm.picker {
                    case .projectOwned:
                        SearchView(array: $vm.projectOwned, vm: SearchViewModel(array: vm.projectOwned))
                    case .projectJoined:
                        SearchView(array: $vm.projectJoined, vm: SearchViewModel(array: vm.projectJoined))
                }
                
                Picker("Project Picker", selection: $vm.picker) {
                    ForEach(ProjectMainViewPicker.allCases, id: \.self) { picker in
                        Text(picker.rawValue).tag(picker)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                ScrollView {
                    ForEach(vm.getProjectsByType(picker: vm.picker)) { project in
                        NavigationLink {
                            ProjectOverviewView(vm: ProjectOverviewViewModel(uid: project.id))
                                .environmentObject(vm)
                        } label: {
                            ProjectMainCardView(project: project)
                        }
                    }
                }
                .padding()
            }
            
            .padding()
            
        }
    }
}
//
//#Preview {
//    ProjectMainView()
//        .preferredColorScheme(.dark)
//}

