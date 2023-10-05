//
//  MilestoneCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct MilestoneCardView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Milestone Title")
                    .font(.headline)
                Text("Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien.")
                    .font(.caption2)
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
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

struct MilestoneCardView_Previews: PreviewProvider {
    static var previews: some View {
        MilestoneCardView()
            .preferredColorScheme(.dark)
    }
}
