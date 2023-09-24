//
//  ProjectDescriptionView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectDescriptionView: View {
    var project: Project
    
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
                    caption: "Rp \(project.totalMilestone().formatted(.number))"
                )
            }
            DetailCard(detailCardType: .description, title: "Job Description", caption: "\(project.desc)")
                .padding(.horizontal, 20)
            VStack(alignment: .leading) {
                Text("Members")
                    .font(.headline)
                MemberListView()
                MemberListView()
                MemberListView()
            }
            .padding()
            .background(Color("gray"))
            .padding()
        }
        
    }
}

struct ProjectDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDescriptionView(project: Mock.projects[0])
            .preferredColorScheme(.dark)
    }
}
