//
//  InputDescriptionView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputDescriptionView: View {
    var title: String = "Input Description"
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            HStack {
                TextEditor(text: $text)
                    .frame(height: 120)
                Spacer()
                Button {
                    text = ""
                } label: {
                    Image(systemName: "x.circle")
                }

                
            }
            Divider()
                .foregroundColor(.white)
            HStack {
                Spacer()
                Text("5/150")
                    .font(.caption2)
            }
        }
    }
}

struct InputDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InputDescriptionView(text: .constant(""))
    }
}
