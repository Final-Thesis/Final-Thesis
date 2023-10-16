//
//  EmptyDataView.swift
//  IColab
//
//  Created by Jeremy Raymond on 11/10/23.
//

import SwiftUI

struct EmptyDataView: View {
    var icon: String = "circle"
    var title: String = "Example Title"
    var desc: String = "An example short description or message on why it's empty"
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: icon)
                .font(.largeTitle)
            Text(title)
                .font(.headline)
            Text(desc)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    EmptyDataView()
}
