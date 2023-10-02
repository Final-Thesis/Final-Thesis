//
//  ProjectMainCardView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct ProjectMainCardView: View {
    @State var status: Bool = true
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 64, height: 64)
                .foregroundStyle(.purple)
                .cornerRadius(12)
            VStack(alignment: .leading) {
                Text("Project Title")
                    .font(.headline)
                Text("Owner Name")
                    .font(.caption2)
                if status {
                    HStack {
                        ProgressView(value: 0.75)
                            .tint(.purple)
                            .frame(width: 200)
                        Text("75%")
                            .font(.headline)
                    }
                }
                else {
                    Text("Pending")
                        .font(.footnote)
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .background(.purple)
                        .cornerRadius(12)
                }
            }
            Spacer()
        }
        .frame(width: 332)
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

#Preview {
    ProjectMainCardView()
        .preferredColorScheme(.dark)
}

