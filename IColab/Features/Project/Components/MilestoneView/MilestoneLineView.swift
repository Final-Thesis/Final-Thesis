//
//  MilestoneLineView.swift
//  IColab
//
//  Created by Jeremy Raymond on 28/09/23.
//

import SwiftUI

struct VerticalStepIndicator: View {
    var milestone: Milestone
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
                    ForEach(0..<milestone.goals.count, id: \.self) { index in
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
                                MilestoneDetailView(goal: milestone.goals[index])
                            } label: {
                                MilestoneCardView(goal: milestone.goals[index])
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
    var milestone: Milestone
        let currentStepIndex = 1 // Set the current step index here

    var body: some View {
        VerticalStepIndicator(milestone: milestone, currentStepIndex: currentStepIndex)
    }
}

#Preview {
    MilestoneLineView(milestone: Mock.projects[0].milestones[0])
}
