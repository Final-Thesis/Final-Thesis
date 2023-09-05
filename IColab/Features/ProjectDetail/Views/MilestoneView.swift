//
//  MilestoneView.swift
//  IColab
//
//  Created by Kevin Dallian on 05/09/23.
//

import SwiftUI

struct MilestoneView: View {
    var milestones : [Milestone]
    var body: some View {
        VStack(spacing: 20){
            MilestoneDetailCard(milestoneDetailCardType: .overview, milestones: milestones)
            MilestoneDetailCard(milestoneDetailCardType: .detail, milestones: milestones)
                .padding(.horizontal, 15)
        }
        
    }
}

struct MilestoneView_Previews: PreviewProvider {
    static var previews: some View {
        MilestoneView(milestones: Mock.projects[0].milestones)
    }
}
