//
//  InputTagPopupView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTagPopupView: View {
    @State var pickerSelector: String = "Tag 2"
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Pick Tag")
                    .font(.headline)
                Spacer()
            }
            Picker("Flavor", selection: $pickerSelector) {
                Text("Chocolate").tag("Tag 1")
                Text("Vanilla").tag("Tag 2")
                Text("Strawberry").tag("Tag 3")
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            Button {
                //
            } label: {
                Text("Confirm")
                    .frame(width: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(Color("gray"))
    }
}

struct InputTagPopupView_Previews: PreviewProvider {
    static var previews: some View {
        InputTagPopupView()
            .colorScheme(.dark)
    }
}
