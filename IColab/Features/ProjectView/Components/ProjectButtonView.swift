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
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(description)
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
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
