//
//  TextFieldView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

enum TextFieldStyle {
    case plain
    case password
}
struct TextFieldView: View {
    @Binding var input: String
    var icon: String
    var text: String
    var textfieldStyle : TextFieldStyle
    
    init(input: Binding<String>, icon: String, text: String, textfieldStyle: TextFieldStyle = .plain) {
        self._input = input
        self.icon = icon
        self.text = text
        self.textfieldStyle = textfieldStyle
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .font(.title)
                    .frame(width: 30, height: 30)
                switch textfieldStyle {
                case .plain:
                    TextField(text, text: $input, axis: .horizontal)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                case .password:
                    SecureField(text, text: $input)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                }
            }
            Divider()
                .frame(height: 1.5)
                .overlay(.primary)
        }
        .padding(.horizontal)
    }
}

#Preview {
    VStack{
        TextFieldView(input: .constant("String"), icon: "person", text: "Username", textfieldStyle: .plain)
        TextFieldView(input: .constant("String"), icon: "key", text: "Password", textfieldStyle: .password)
    }
    .preferredColorScheme(.dark)
}

