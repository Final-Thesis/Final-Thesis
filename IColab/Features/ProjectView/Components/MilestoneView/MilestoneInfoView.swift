//
//  MilestoneInfoView.swift
//  IColab
//
//  Created by Jeremy Raymond on 28/09/23.
//

import SwiftUI

struct MilestoneInfoView: View {
    var title: String = "Title"
    var value: String = "8"
    var measurement: String = "Milestone"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.caption2)
            Text(value)
                .font(.headline)
            Text(measurement)
                .font(.caption2)
        }
    }
}

#Preview {
    MilestoneInfoView()
}
