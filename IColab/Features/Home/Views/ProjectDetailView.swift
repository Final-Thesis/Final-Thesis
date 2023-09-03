//
//  ProjectDetailView.swift
//  IColab
//
//  Created by Kevin Dallian on 02/09/23.
//

import SwiftUI

enum PickerItem : String, CaseIterable {
    case overview = "Overview"
    case milestone = "Milestone"
}

struct ProjectDetailView: View {
    @Binding var project : Project
    @State var pickerSelection : PickerItem = .overview
    var body: some View {
        VStack{
            PickerView(pickerSelection: $pickerSelection)
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
                        caption: "\(project.type)")
                    DetailCard(
                        detailCardType: .cardwithlogo,
                        symbol: "clock.fill",
                        title: "Total Earning",
                        caption: "$ 5000"
                    )
                }
            }
        }
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView(project: .constant(Mock.projects[0]))
    }
}
