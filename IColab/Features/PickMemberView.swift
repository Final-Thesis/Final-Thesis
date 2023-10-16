//
//  PickMemberView.swift
//  IColab
//
//  Created by Jeremy Raymond on 09/10/23.
//

import SwiftUI

struct PickMemberView: View {
    @Binding var pageIndex: Int
    @EnvironmentObject var vm: CreateProjectViewModel
    
    var body: some View {
        VStack(content: {
            InputMemberView()
                .environmentObject(vm)
//            NavigationLink {
//                //Initialize all the project into account
//                //And then
//                //Need to go back to main project page
//            } label: {
//                Text("Confirm")
//            }

        })
    }
}

//#Preview {
//    PickMemberView()
//}
