//
//  EditTag.swift
//  IColab
//
//  Created by Jeremy Raymond on 26/09/23.
//

import SwiftUI

struct EditTag: View {
    var text: String = "tag"
    
    var body: some View {
        HStack {
            Text(text)
            Button {
                //
            } label: {
                Image(systemName: "x.circle.fill")
            }
            .buttonStyle(.plain)
        }
        .padding(8)
        .background(.purple)
        .cornerRadius(12)
    }
}

#Preview {
    EditTag()
}
