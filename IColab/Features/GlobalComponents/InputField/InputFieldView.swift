//
//  InputFieldView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct InputFieldView: View {
    
    var body: some View {
        VStack {
            //InputTitleView()
            //InputDescriptionView()
//            InputDateView()
            
            Button {
                //open file picker
            } label: {
                HStack {
                    Image(systemName: "paperclip")
                    Text("Attach File")
                        .font(.headline)
                    Spacer()
                }
                .padding()
                .background(Color("gray"))
            }
            .buttonStyle(.plain)

        }
    }
}

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView()
            .preferredColorScheme(.dark)
    }
}
