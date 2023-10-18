//
//  CreateProjectView.swift
//  IColab
//
//  Created by Jeremy Raymond on 09/10/23.
//

import SwiftUI

struct CreateProjectView: View {
    @StateObject var vm: CreateProjectViewModel
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var pageIndex: Int = 0

    
    var body: some View {
        VStack {
            if pageIndex == 0 {
                AddProjectDetailView(pageIndex: $pageIndex)
                    .environmentObject(vm)
            }
            else if pageIndex == 1 {
                PickMemberView(pageIndex: $pageIndex)
                    .environmentObject(vm)
                    .padding()
                ButtonComponent(title: "Submit", width: 240) {
                    vm.createProject()
                    
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .padding()
    }
}
//
//#Preview {
//    CreateProjectView()
//}
