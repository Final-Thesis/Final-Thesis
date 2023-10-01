//
//  MilestonesView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct MilestonesView: View {
    var body: some View {
        VStack {
            HStack {
                MilestoneInfoView(title: "Total Milestone", value: "6", measurement: "Milestone")
                Divider()
                    .frame(height: 32)
                MilestoneInfoView(title: "Average Length", value: "2.2 ", measurement: "Days")
                Divider()
                    .frame(height: 32)
                MilestoneInfoView(title: "Average Payment", value: "5.525.000", measurement: "Rp")
            }
            .padding()
            .background(Color("gray"))
            .cornerRadius(12)
            MilestoneLineView()
        }
    }
}

struct MilestonesView_Previews: PreviewProvider {
    static var previews: some View {
        MilestonesView()
            .preferredColorScheme(.dark)
    }
}
