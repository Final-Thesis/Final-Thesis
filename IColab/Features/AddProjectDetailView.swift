//
//  AddProjectDetailView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/10/23.
//

import SwiftUI

struct AddProjectDetailView: View {
    @Binding var pageIndex: Int
    @EnvironmentObject var vm: CreateProjectViewModel
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        VStack {
            VStack {
                InputTitleView(title: "Project Title", text: $vm.project.title)
                InputDescriptionView(title: "Project Short Summary", text: $vm.project.desc)
                InputTagsView(tags: $vm.project.tags)
                InputDateView(date: $vm.project.startDate)
            }
            .padding()
            
            ButtonComponent(title: "Next", width: 240) {
                pageIndex = 1
            }
            
            Spacer()
        }
        .padding()
    }
    

}

//#Preview {
//    AddProjectDetailView()
//}
