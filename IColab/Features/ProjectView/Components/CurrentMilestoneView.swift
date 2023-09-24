//
//  CurrentMilestoneView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CurrentMilestoneView: View {
    var body: some View {
        HStack {
            CircleProgressView()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text("Milestone 2")
                    .font(.headline)
                Text("Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.")
                    .font(.caption2)
            }
            VStack {
                Text("22")
                Text("Oct")
                    .bold()
                Text("2022")
            }
            .padding(8)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color("purple"), lineWidth: 2)
            )
            
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
