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
        ScrollView{
            PickerView(pickerSelection: $pickerSelection)
            switch pickerSelection {
            case .overview:
                OverviewView(project: project)
            case .milestone:
                Text("Milestone")
            }
        }
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView(project: .constant(Mock.projects[0]))
    }
}
