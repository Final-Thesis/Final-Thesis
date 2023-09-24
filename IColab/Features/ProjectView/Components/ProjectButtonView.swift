//
//  ProjectButtonView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "newspaper.circle")
                .font(.title)
            VStack(alignment: .leading) {
                Text("Project Overview")
                    .font(.headline)
                Text("Get in depth overview of the current project, it's requirements, and summary")
                    .font(.caption2)
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
