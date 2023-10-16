//
//  ProjectMemberContactCardView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct ProjectMemberContactCardView: View {
    var name: String = "Name"
    var role: String = "Role"
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 48)
                .foregroundColor(.purple)
            Text(name)
            Text(role)
        }
        .padding()
        .padding()
        .padding(.horizontal)
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

#Preview {
    ProjectMemberContactCardView()
        .preferredColorScheme(.dark)
}
