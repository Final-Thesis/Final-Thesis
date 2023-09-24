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
                    Text("Example navigations")
                }
                .buttonStyle(.borderedProminent)

                Button {
                    //
                } label: {
                    Text("Worker Project")
                }
                .buttonStyle(.borderedProminent)
                Button {
                    //
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
    }
}
