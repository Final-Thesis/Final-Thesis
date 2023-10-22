//
//  MilestoneDetailView.swift
//  IColab
//
//  Created by Jeremy Raymond on 25/09/23.
//

import SwiftUI

struct MilestoneDetailView: View {
    @EnvironmentObject var vm: EditProjectViewModel
    var milestone: Milestone
    var goal: Goal
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .frame(height: 200)
                    .foregroundColor(Color("purple"))
                VStack(alignment: .leading) {
                    Text(goal.name)
                        .font(.largeTitle)
                        .bold()
                    Text(goal.desc)
                    
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
                ForEach(goal.tasks) { task in
                    TaskCardView(task: task, toggle: .constant(true))
                }
            }
            
        }
        .navigationTitle("Milestone Detail")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    EditGoalView(role: milestone.role, goal: goal)
                        .environmentObject(vm)
                } label: {
                    Image(systemName: "pencil")
                }

            }
        }
    }
}
//
//struct MilestoneDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MilestoneDetailView(milestone: MockMilestones.array[0], goal: MockMilestones.array[0].goals[0])
//            .colorScheme(.dark)
//    }
//}
