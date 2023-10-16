//
//  NoMessageView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct NoMessageView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "envelope.open.fill")
                .frame(width: 64, height: 64)
            Text("No Message Yet")
                .font(.headline)
            Text("Join a project first to start chatting with someone")
                .font(.footnote)
            
            ButtonComponent(title: "Confirm", width: 120) {
                //test
            }
            .padding()
        }
        .frame(width: 120)
    }
}

#Preview {
    NoMessageView()
}
