//
//  InputNumberView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct InputNumberView: View {
    @Binding var score: Int

    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()

    var body: some View {
        VStack {
            TextField("Enter nominal: ", value: $score, formatter: formatter)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }
}

#Preview {
    InputNumberView(score: .constant(5))
}
