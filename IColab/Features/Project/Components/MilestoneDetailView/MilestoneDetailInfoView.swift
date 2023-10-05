//
//  MilestoneDetailInfoView.swift
//  IColab
//
//  Created by Jeremy Raymond on 28/09/23.
//

import SwiftUI

struct MilestoneDetailInfoView: View {
    var icon: String = "hourglass.circle"
    var title: String = "Due Date"
    var value: String = "08-08-2023"
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
            Text(title)
                .font(.headline)
            Text(value)
                .font(.subheadline)
        }
        .padding()
        .padding(.vertical)
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

#Preview {
    MilestoneDetailInfoView()
}
