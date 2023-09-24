//
//  ProjectMainPlaceholder.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectMainPlaceholder: View {
    var body: some View {
        NavigationStack {
            HStack {
//                Text("Example navigations")
//                    .navigationDestination(for: String.self) { text in
//                        ProjectOverviewView(project: Mock.projects[0])
//                    }

                NavigationLink {
                    ProjectOverviewView(project: Mock.projects[0])
                } label: {
                    Text("Worker Project")
                }
                .buttonStyle(.borderedProminent)

                NavigationLink {
                    ProjectOverviewView(project: Mock.projects[0])
                } label: {
                    Text("Owner Project")
                }
                .buttonStyle(.borderedProminent)
            }
        }
        
        
        

    }
}

struct ProjectMainPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        ProjectMainPlaceholder()
            .preferredColorScheme(.dark)
    }
}
