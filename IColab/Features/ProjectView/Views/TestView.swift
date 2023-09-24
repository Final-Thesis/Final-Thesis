//
//  TestView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct VerticalStepIndicator: View {
    let steps: [String]
    let currentStepIndex: Int

    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .frame(width: 4)
                    .padding(.leading, 14)
                    .padding(.vertical, 128)
                Spacer()
            }
            
            VStack {
                ForEach(0..<steps.count, id: \.self) { index in
                    HStack {
                        Circle()
                            .frame(width: 32)
                            .foregroundColor(index <= currentStepIndex ? .purple : .gray) // Change color based on completed steps

                        MilestoneCardView()
                    }
                }
                
            }
        }
        .padding()
    }
}

struct TestView: View {
    let steps = ["Step 1", "Step 2", "Step 3", "Step 4"] // Add your step descriptions here
        let currentStepIndex = 0 // Set the current step index here

        var body: some View {
            VerticalStepIndicator(steps: steps, currentStepIndex: currentStepIndex)
        }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
            .preferredColorScheme(.dark)
    }
}
