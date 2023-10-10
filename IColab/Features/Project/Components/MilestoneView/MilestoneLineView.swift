//
//  MilestoneLineView.swift
//  IColab
//
//  Created by Jeremy Raymond on 28/09/23.
//

import SwiftUI

struct VerticalStepIndicator: View {
    @EnvironmentObject var vm: EditProjectViewModel
    
    var role: Role
    let currentStepIndex: Int

    var body: some View {
        NavigationStack {
            ZStack {
                HStack {
                    Rectangle()
                        .frame(width: 4)
                        .padding(.leading, 14)
                        .padding(.vertical, 82)
                        .foregroundColor(.purple)
                    Spacer()
                }
                
                VStack {
                    ForEach(0..<vm.getMilestone(role: role).goals.count, id: \.self) { index in
                        HStack {
                            if !(index <= currentStepIndex) {
                                Circle()
                                    .stroke(
                                        .purple,
                                        lineWidth: 4
                                    )
                                    .background(.black)
                                    .cornerRadius(99)
                                    .frame(width: 32)
                            }
                            else {
                                Circle()
                                    .frame(width: 32)
                                    .foregroundColor(.purple)
                            }
                                
                            NavigationLink {
                                MilestoneDetailView(milestone: vm.getMilestone(role: role), goal: vm.getMilestone(role: role).goals[index])
                                    .environmentObject(vm)
                            } label: {
                                MilestoneCardView(goal: vm.getMilestone(role: role).goals[index])
                            }

                            
                        }
                    }
                    
                }
            }
            .padding()
        }
    }
}

struct MilestoneLineView: View {
    @EnvironmentObject var vm: EditProjectViewModel
    var role: Role
    let currentStepIndex = 1 // Set the current step index here

    var body: some View {
        VerticalStepIndicator(role: role, currentStepIndex: currentStepIndex)
    }
}

//#Preview {
//    MilestoneLineView(milestone: Mock.projects[0].milestones[0])
//}
