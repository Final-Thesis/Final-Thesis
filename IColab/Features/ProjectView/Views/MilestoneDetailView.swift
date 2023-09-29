//
//  MilestoneDetailView.swift
//  IColab
//
//  Created by Jeremy Raymond on 25/09/23.
//

import SwiftUI

struct MilestoneDetailView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .frame(height: 200)
                    .foregroundColor(Color("purple"))
                VStack(alignment: .leading) {
                    Text("Acne Detection")
                        .font(.largeTitle)
                        .bold()
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    
                }
                .padding()
            }
            HStack {
                VStack {
                    Image(systemName: "hourglass.circle")
                        .font(.largeTitle)
                    Text("Due Date")
                        .font(.headline)
                    Text("08-08-2023")
                        .font(.subheadline)
                }
                .padding()
                .padding(.vertical)
                .background(Color("gray"))
                .cornerRadius(12)
                VStack {
                    Image(systemName: "hourglass.circle")
                        .font(.largeTitle)
                    Text("Due Date")
                        .font(.headline)
                    Text("08-08-2023")
                        .font(.subheadline)
                }
                .padding()
                .padding(.vertical)
                .background(Color("gray"))
                .cornerRadius(12)
                VStack {
                    Image(systemName: "hourglass.circle")
                        .font(.largeTitle)
                    Text("Due Date")
                        .font(.headline)
                    Text("08-08-2023")
                        .font(.subheadline)
                }
                .padding()
                .padding(.vertical)
                .background(Color("gray"))
                .cornerRadius(12)
            }
            .padding(.vertical)
            Divider()
            ScrollView {
                ForEach(Mock.milestones[0].tasks) { task in
                    TaskCardView(task: task)
                }
            }
            
        }
        .navigationTitle("Milestone Detail")
    }
}

struct MilestoneDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MilestoneDetailView()
            .colorScheme(.dark)
    }
}
