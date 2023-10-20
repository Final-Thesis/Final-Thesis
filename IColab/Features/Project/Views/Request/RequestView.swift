//
//  RequestView.swift
//  IColab
//
//  Created by Kevin Dallian on 19/10/23.
//

import SwiftUI

struct RequestView: View {
    @EnvironmentObject var vm : ProjectOverviewViewModel
//    var requests = MockRequest.array
    @State var chosenIndex = 0
    @State var showSheet = false
    var body: some View {
        VStack{
            if vm.project.requests.isEmpty {
                Image(systemName: "filemenu.and.cursorarrow")
                    .font(.system(size: 64))
                Text("No Requests")
                    .font(.title3).bold()
            }else{
                ForEach(0..<vm.project.requests.count) { idx in
                    Button {
                        chosenIndex = idx
                        showSheet.toggle()
                    } label: {
                        RequestCard(request: vm.project.requests[idx])
                    }
                }
            }
        }
        .sheet(isPresented: $showSheet, content: {
            VStack{
                RequestSheet(request: vm.project.requests[chosenIndex])
            }
            .presentationDragIndicator(.visible)
            .presentationDetents([.fraction(0.45), .large])
        })
        .navigationTitle("Request List")
    }
}

#Preview {
    NavigationStack{
        RequestView()
            .navigationBarTitleDisplayMode(.inline)
            .environmentObject(ProjectOverviewViewModel(project: Mock.projects[0]))
    }
}
