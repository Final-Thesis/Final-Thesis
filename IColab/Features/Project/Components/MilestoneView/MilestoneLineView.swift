//
//  MilestoneLineView.swift
//  IColab
//
//  Created by Jeremy Raymond on 28/09/23.
//

import SwiftUI

struct VerticalStepIndicator: View {
    let steps: [String]
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
                    ForEach(0..<steps.count, id: \.self) { index in
                        HStack {
                            if !(index <= currentStepIndex) {
                                Circle()
                                    .stroke(
                                        Color.white,
                                        lineWidth: 4
                                    )
                                    .background(.black)
                                    .cornerRadius(99)
                                    .foregroundColor(.red)
                                    .frame(width: 32)
                            }
                            else {
                                Circle()
                                    .frame(width: 32)
                                    .foregroundColor(.purple)
                            }
                                
                            NavigationLink {
                                MilestoneDetailView()
                            } label: {
                                MilestoneCardView()
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
    let steps = ["Step 1", "Step 2", "Step 3", "Step 4"] // Add your step descriptions here
    let currentStepIndex = 1 // Set the current step index here

    var body: some View {
        VerticalStepIndicator(steps: steps, currentStepIndex: currentStepIndex)
    }
}

#Preview {
    MilestoneLineView()
}
