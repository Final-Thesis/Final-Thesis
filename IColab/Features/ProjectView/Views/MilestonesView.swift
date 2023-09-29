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
                VStack {
                    Text("Total Milestone")
                        .font(.caption2)
                    Text("6")
                        .font(.headline)
                    Text("Milestone")
                        .font(.caption2)
                }
                Divider()
                    .frame(height: 32)
                VStack {
                    Text("Average Length")
                        .font(.caption2)
                    Text("22.2")
                        .font(.headline)
                    Text("Days")
                        .font(.caption2)
                }
                Divider()
                    .frame(height: 32)
                VStack {
                    Text("Average Payment")
                        .font(.caption2)
                    Text("5.525.000")
                        .font(.headline)
                    Text("Rp")
                        .font(.caption2)
                }
            }
            .padding()
            .background(Color("gray"))
            .cornerRadius(12)
            TestView()
        }
    }
}

struct MilestonesView_Previews: PreviewProvider {
    static var previews: some View {
        MilestonesView()
            .preferredColorScheme(.dark)
    }
}
