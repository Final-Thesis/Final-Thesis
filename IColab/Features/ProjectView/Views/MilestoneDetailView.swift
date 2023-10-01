//
//  MilestoneDetailView.swift
//  IColab
//
//  Created by Jeremy Raymond on 25/09/23.
//

import SwiftUI

struct MilestoneDetailView: View {
    var title: String = "Acne Detection"
    var desc: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .frame(height: 200)
                    .foregroundColor(Color("purple"))
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.largeTitle)
                        .bold()
                    Text(desc)
                    
                }
                .padding()
            }
            HStack {
                MilestoneDetailInfoView(icon: "hourglass.circle", title: "Due Date", value: "08-08-2023")
                MilestoneDetailInfoView(icon: "dollarsign.circle", title: "Nominal", value: "Rp. 500.000")
                MilestoneDetailInfoView(icon: "folder.circle", title: "Total Task", value: "5")
            }
            .padding(.vertical)
            Divider()
            ScrollView {
                ForEach(Mock.milestones[0].goals[0].tasks) { task in
                    TaskCardView(task: task, toggle: .constant(true))
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
