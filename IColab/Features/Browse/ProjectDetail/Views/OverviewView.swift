//
//  OverviewView.swift
//  IColab
//
//  Created by Kevin Dallian on 04/09/23.
//

import SwiftUI

struct OverviewView: View {
    var project : Project
    @ObservedObject var accountManager = AccountManager.shared
    @State var showAlert: Bool = false
    @Environment(\.presentationMode) var presentationMode
    @State var role : Role = .frontend
    
    var body: some View {
        VStack{
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
                .padding(.horizontal, 20)
            DetailCard(detailCardType: .requirements, title: "Job Requirements", requirements: project.requirements)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
            HStack{
                Text("Role")
                    .font(.title2).bold()
                    .padding(.leading)
                Spacer()
                Picker("Role", selection: $role) {
                    ForEach(Role.allCases, id: \.self){ role in
                        Text(role.rawValue)
                    }
                }
            }
            .background(.ultraThinMaterial)
            .padding(.horizontal, 20)
            
            ButtonComponent(title: "Apply", width: 200) {
                let request = Request(worker: accountManager.account!, role: role, date: Date.now)
                project.requests.append(request)
                showAlert.toggle()
            }
            .padding(.bottom, 30)
        }
        .alert("Apply Success", isPresented: $showAlert) {
            Button("Dismiss"){
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct OverviewView_Previews: PreviewProvider {
    static var previews: some View {
        OverviewView(project: Mock.projects[0])
    }
}
