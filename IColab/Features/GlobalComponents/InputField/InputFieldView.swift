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
            InputTitleView()
            InputDescriptionView()
            InputDateView()
        }
    }
}

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView()
            .preferredColorScheme(.dark)
    }
}
