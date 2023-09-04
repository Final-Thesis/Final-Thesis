//
//  OverviewView.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct OverviewView: View {
    var project : Project
    var body: some View {
        VStack{
            HStack{
                DetailCard(
                    detailCardType: .cardwithlogo,
                    symbol: "clock",
                    title: "Start Date",
                    caption: "\(project.startDate.formatted(date: .numeric, time: .omitted))")
                DetailCard(
                    detailCardType: .cardwithlogo,
                    symbol: "clock.fill",
                    title: "End Date",
                    caption: "\(project.endDate.formatted(date: .numeric, time: .omitted))"
                )
            }
            HStack{
                DetailCard(
                    detailCardType: .cardwithlogo,
                    symbol: "person",
                    title: "Role",
                    caption: "\(project.role)")
                DetailCard(
                    detailCardType: .cardwithlogo,
                    symbol: "clock.fill",
                    title: "Total Earning",
                    caption: "$5000"
                )
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(project.tags, id: \.self){ tag in
                        TagItem(tagText: tag)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            }
            DetailCard(detailCardType: .description, title: "Job Description", caption: "\(project.desc)")
            DetailCard(detailCardType: .requirements, title: "Job Requirements", requirements: project.requirements)
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView(project: Mock.projects[0])
    }
}
