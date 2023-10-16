//
//  PopupView.swift
//  IColab
//
//  Created by Jeremy Raymond on 29/09/23.
//

import SwiftUI

struct PopupView: View {
    var haveBackground: Bool = true
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "envelope.open.fill")
                .font(.largeTitle)
            Text("No Message Yet")
                .font(.headline)
                .multilineTextAlignment(.center)
            Text("Join a project first to start chatting with someone")
                .font(.footnote)
                .multilineTextAlignment(.center)
            ButtonComponent(title: "Confirm", width: 120) {
                //test
            }
            .padding()
        }
        .frame(width: 140)
        .padding(24)
        .padding(.vertical)
        .background(haveBackground ? Color("gray") : .clear)
        .cornerRadius(12)
    }
}

#Preview {
    PopupView()
}
