//
//  ProjectMainPlaceholder.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct ProjectMainPlaceholder: View {
    var body: some View {
        HStack {
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

struct ProjectMainPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        ProjectMainPlaceholder()
    }
}
