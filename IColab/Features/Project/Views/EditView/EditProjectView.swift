//
//  EditProjectView.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import SwiftUI

struct EditProjectView: View {
    @EnvironmentObject var vm: ProjectOverviewViewModel
    @State var title: String = ""
    @State var summary: String = ""
    @State var tags: [String] = ["HealthKit"]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        VStack {
            VStack {
                InputTitleView(title: "Project Title", text: $title)
                InputDescriptionView(title: "Project Short Summary", text: $summary)
                InputTagsView(tags: $tags)
            }
            .padding()
            
            ButtonComponent(title: "Submit", width: 320) {
                vm.editProjectDetail(title: title, summary: summary, tags: tags)
                
                vm.objectWillChange.send()
                self.presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    EditProjectView()
        .preferredColorScheme(.dark)
}
