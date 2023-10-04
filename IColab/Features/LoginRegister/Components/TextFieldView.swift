//
//  TextFieldView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct TextFieldView: View {
    var icon: String = "person"
    var text: String = "Username"
    @State var input: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .font(.title)
                TextField(text, text: $input)
            }
            Rectangle()
                .frame(height: 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    TextFieldView()
        .preferredColorScheme(.dark)
}

