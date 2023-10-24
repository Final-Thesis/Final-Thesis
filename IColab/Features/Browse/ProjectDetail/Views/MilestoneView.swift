//
//  MilestoneView.swift
//  IColab
//
//  Created by Kevin Dallian on 05/09/23.
//

import SwiftUI

struct MilestoneView: View {
    @State var milestones : [Milestone]
    @State var role : Role = .frontend
    
    var body: some View {
        ScrollView{
            HStack{
                Text("Role")
                    .font(.title2).bold()
                Spacer()
                Picker("Role", selection: $role) {
                    ForEach(Role.allCases, id : \.self){ role in
                        Text(role.rawValue)
                    }
                }
            }
            .padding(.horizontal, 30)
            MilestoneDetailCard(milestoneDetailCardType: .overview, milestones: filterMilestone())
            MilestoneDetailCard(milestoneDetailCardType: .detail, milestones: filterMilestone())
                .padding(.horizontal, 15)
        }
    }
    
    func filterMilestone() -> [Milestone] {
       let filteredMilestones = self.milestones.filter({ milestone in
            milestone.role == self.role
        })
        return filteredMilestones
    }
}

struct MilestoneView_Previews: PreviewProvider {
    static var previews: some View {
        MilestoneView(milestones: Mock.projects[0].milestones)
    }
}
