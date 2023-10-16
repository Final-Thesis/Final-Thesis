//
//  ProjectContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 04/10/23.
//

import SwiftUI

struct ProjectContactView: View {
    var project: Project
    @State var toggle: Bool = true
    
    var body: some View {
        VStack {
            Button {
                toggle.toggle()
            } label: {
                HStack {
                    Text(project.title)
                        .font(.headline)
                    Spacer()
                    Image(systemName: toggle ? "chevron.down" : "chevron.up")
                }
            }
            .buttonStyle(.plain)
            
            Divider()
                .background(.white)
            if toggle {
                ForEach(project.members!) { member in
                    ContactCardView(member: member)
                }
            }
            
        }
        .animation(.easeInOut, value: toggle)
    }
}

//#Preview {
//    ProjectContactView()
//}
