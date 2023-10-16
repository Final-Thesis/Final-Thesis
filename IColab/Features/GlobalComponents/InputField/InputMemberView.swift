//
//  InputMemberView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputMemberView: View {
    @EnvironmentObject var vm: CreateProjectViewModel
    
    @State var sheet: Bool = false
    @State var rolePick: Role = .backend
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Input Role")
                    .font(.headline)
                Spacer()
                Button {
                    sheet.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                }
                .buttonStyle(.plain)
            }
            Group {
                VStack {
                    if vm.project.milestones.isEmpty {
                        VStack {
                            Image(systemName: "person.2.slash")
                                .font(.largeTitle)
                                .bold()
                            Text("No Role Assigned Yet")
                                .font(.title2)
                                .bold()
                        }
                        .padding()
                    }
                    else {
                        ForEach(vm.project.milestones) { milestone in
                            NavigationLink {
                                MilestoneLineView(vm: EditProjectViewModel(project: vm.project), role: milestone.role)
                            } label: {
                                MemberListView(role: milestone.role ,editMode: true)
                            }
                        }
                    }
                }
                
                
            }
            .padding()
            
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.white)
        }
        .sheet(isPresented: $sheet, content: {
            VStack(content: {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(Role.allCases, id: \.self) { role in
                        InputRoleToggleView(rolePick: $rolePick, role: role)
                    }
                }
                Spacer()
                ButtonComponent(title: "Add", width: 320) {
                    vm.project.milestones.append(Milestone(role: rolePick, goals: []))
//                    $vm.members.append(Member(role: rolePick))
                    
                    vm.objectWillChange.send()
                    sheet.toggle()
                }
            })
            .padding()
            .presentationDetents([.medium])
        })
    }
}

struct InputMemberView_Previews: PreviewProvider {
    static var previews: some View {
        InputMemberView()
            .preferredColorScheme(.dark)
    }
}
