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

                NavigationLink {
                    ProjectOverviewView()
                } label: {
                    Text("Worker Project")
                }
                .buttonStyle(.borderedProminent)

                NavigationLink {
                    ProjectOverviewView()
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
