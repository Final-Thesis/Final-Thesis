//
//  CurrentMilestoneView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentMilestoneView: View {
    var goal: Goal = MockMilestones.array[0].goals[0]
    
    var body: some View {
        HStack {
            CircleProgressView()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text(goal.name)
                    .font(.headline)
                Text(goal.desc)
                    .font(.caption2)
            }
            CurrentMilestoneDateView(date: goal.endDate)
            
        }
        .padding(24)
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

struct CurrentMilestoneView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentMilestoneView()
        .preferredColorScheme(.dark)
    }
}
