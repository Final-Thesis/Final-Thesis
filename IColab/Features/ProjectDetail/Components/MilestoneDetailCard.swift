//
//  MilestoneDetailCard.swift
//  IColab
//
//  Created by Kevin Dallian on 05/09/23.
//

import SwiftUI

struct MilestoneDetailCard: View {
    var milestoneDetailCardType : MilestoneDetailCardType
    var milestones : [Milestone]
    var body: some View {
        switch milestoneDetailCardType {
    // MARK: Overview
        case .overview:
            HStack{
                VStack(spacing: 5){
                    Text("Total Milestone")
                        .font(.caption)
                    Text("\(milestones.count)")
                        .fontWeight(.bold)
                    Text("Milestones")
                        .font(.caption)
                }
                Divider()
                VStack(spacing: 5){
                    Text("Average Length")
                        .font(.caption)
                    Text("22.2")
                        .fontWeight(.bold)
                    Text("Days")
                        .font(.caption)
                }
                Divider()
                VStack(spacing: 5){
                    Text("Average Payment")
                        .font(.caption)
                    Text("\(milestones[0].goals[0].nominal.formatted(.number))")
                        .fontWeight(.bold)
                    Text("Rp")
                        .font(.caption)
                }
            }
            .frame(height: 80)
            .padding(.horizontal, 10)
            .background(.ultraThinMaterial)
            .cornerRadius(12)
    //MARK: Detail
        case .detail:
            ForEach(milestones[0].goals) { milestone in
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text(milestone.name)
                            .font(.headline)
                            .fontWeight(.bold)
                        Text(milestone.desc)
                    }
                    VStack{
                        Text(milestone.endDate.formatted(.dateTime.day()))
                        Text(milestone.endDate.formatted(.dateTime.month()))
                        Text(milestone.endDate.formatted(.dateTime.year()))
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color("purple"), lineWidth: 3)
                    )
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(.ultraThinMaterial)
                .cornerRadius(12)
            }
            
        }
    }
}

struct MilestoneDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            MilestoneDetailCard(milestoneDetailCardType: .overview, milestones: [MockMilestones.array[0]])
            
            MilestoneDetailCard(milestoneDetailCardType: .detail, milestones: [
                MockMilestones.array[0],
                MockMilestones.array[1],
            ])
            
        }
    }
}

enum MilestoneDetailCardType{
    case overview
    case detail
}
