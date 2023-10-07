//
//  EditProjectDescriptionView.swift
//  IColab
//
//  Created by Jeremy Raymond on 27/09/23.
//

import SwiftUI

struct EditProjectDescriptionView: View {
    @EnvironmentObject var vm: ProjectOverviewViewModel
    @State var desc: String = ""
    @State var member: String = ""
    @State var endDate: Date = Date.now
    
    
    var body: some View {
        VStack {
            VStack {
                InputDescriptionView(text: $desc)
                InputDateView(date: $endDate)
//                InputMemberView()
            }
            .padding()
            
            
            ButtonComponent(title: "Submit", width: 320) {
                
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    EditProjectDescriptionView()
}
