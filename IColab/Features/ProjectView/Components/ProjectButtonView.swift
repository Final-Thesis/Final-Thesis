//
//  ProjectButtonView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectButtonView: View {
    var icon: String = "newspaper.circle"
    var title: String = "Resource Requirement"
    var description: String = "Get in depth overview of the current project, it's requirements, and summary"
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
                    .frame(width: 280)
            }
            Image(systemName: "chevron.right")
                .font(.title)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color("gray"))
        .cornerRadius(12)
    }
}

struct ProjectButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectButtonView()
    }
}
