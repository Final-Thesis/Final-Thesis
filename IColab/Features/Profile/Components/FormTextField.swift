//
//  FormTextField.swift
//  IColab
//
//  Created by Kevin Dallian on 22/09/23.
//

import SwiftUI

struct FormTextField: View {
    var title : String
    @Binding var textField : String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            TextField(title, text: $textField, axis: .vertical)
                .font(.caption)
                .autocorrectionDisabled()
                .submitLabel(.continue)
            Divider()
                .frame(height: 1.5)
                .overlay(.primary)
        }
    }
}

struct FormTextField_Previews: PreviewProvider {
    static var previews: some View {
        FormTextField(title: "School", textField: .constant("BINUS University"))
    }
}
