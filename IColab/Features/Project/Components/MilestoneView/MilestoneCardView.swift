//
//  MilestoneCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct MilestoneCardView: View {
    var goal: Goal
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(goal.name)
                    .font(.headline)
                Text(goal.desc)
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
                HStack {
                    Spacer()
                    Text("Rp. 1.500.000")
                    Spacer()
                }
                .padding(.vertical, 12)
                .background(.purple)
                .cornerRadius(12)
            }
            .padding(.horizontal)
            CurrentMilestoneDateView(date: goal.endDate)
            
        }
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

//struct MilestoneCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        MilestoneCardView()
//            .preferredColorScheme(.dark)
//    }
//}
