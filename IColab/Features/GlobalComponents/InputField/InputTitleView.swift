//
//  InputTitleView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputTitleView: View {
    @State var title: String = "Input Title"
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            HStack {
                TextField("Example Title", text: $text)
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

struct InputTitleView_Previews: PreviewProvider {
    static var previews: some View {
        InputTitleView(text: .constant(""))
    }
}
