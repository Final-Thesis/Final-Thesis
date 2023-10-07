//
//  ProjectMemberContactView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct ProjectMemberContactView: View {
    var title: String = "Title"
    var project: Project = MockProjects.array[0]
    @State var toggle: Bool = true
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack {
            Button {
                toggle.toggle()
            } label: {
                HStack {
                    Text(title)
                        .font(.headline)
                    Spacer()
                    Image(systemName: toggle ? "chevron.down" : "chevron.up")
                }
            }
            .buttonStyle(.plain)
            
            Divider()
                .background(.white)
            if toggle {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(project.members!) { member in
                        ProjectMemberContactCardView()
                    }
                }
            }
            
        }
        .animation(.easeInOut, value: toggle)
    }
}

#Preview {
    ProjectMemberContactView()
}
