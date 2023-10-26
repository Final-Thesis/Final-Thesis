//
//  ProjectStatus.swift
//  IColab
//
//  Created by Kevin Dallian on 19/10/23.
//

import SwiftUI

struct ProjectStatusView: View {
    @EnvironmentObject var vm : ProjectOverviewViewModel
    @State var projectPicker : ProjectPickerItem = .status
    @State var projectPickerItems : [ProjectPickerItem] = [.status, .info]
    @Binding var showSheet : Bool
    var body: some View {
        VStack{
            Picker("", selection: $projectPicker) {
                ForEach(projectPickerItems, id: \.self) { item in
                    Text(item.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding(.bottom, 15)
            switch projectPicker {
            case .status:
                Image(systemName: vm.project.projectState.symbol)
                    .font(.system(size: 64))
                Text(vm.project.projectState.rawValue)
                    .bold()
                if vm.project.projectState == .notStarted {
                    Text(vm.project.projectState.description(date: nil))
                        .frame(width: 300)
                        .padding(.vertical)
                }
                else{
                    Text(.init(vm.project.projectState.description(date: vm.project.projectState == .extended ? vm.project.startDate : Calendar.current.date(byAdding: DateComponents(day: 3), to: Date.now))))
                        .frame(width: 300)
                        .padding(.vertical)
                    if vm.project.projectState == .overdue {
                        ButtonComponent(title: "Extend", width: 320) {
                            showSheet = true
                        }
                    }
                }
                
            case .info:
                HStack{
                    DetailCard(detailCardType: .cardwithlogo, symbol: "clock", title: "Start Date", caption: vm.project.startDate.formatted(date: .numeric, time: .omitted))
                    DetailCard(detailCardType: .cardwithlogo, symbol: "clock.fill", title: "End Date", caption: vm.project.endDate.formatted(date: .numeric, time: .omitted))
                }
                HStack(spacing: 13){
                    RoleCard(symbol: "computermouse.fill", roleTitle: "Front-End", quantity: 3, max: 4)
                    RoleCard(symbol: "desktopcomputer", roleTitle: "Back-End", quantity: 3, max: 4)
                    RoleCard(symbol: "paintbrush.pointed.fill", roleTitle: "Design", quantity: 3, max: 4)
                }
                NavigationLink {
                    RequestView()
                        .environmentObject(vm)
                } label: {
                    HStack{
                        Text("Worker Requests")
                            .bold()
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.vertical, 5)
                }
                .tint(Color(.purple))
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ProjectStatusView(showSheet: .constant(false))
        .environmentObject(ProjectOverviewViewModel(project: Mock.projects[0]))
}

enum ProjectPickerItem : String {
    case status = "Status"
    case info = "Info"
}
