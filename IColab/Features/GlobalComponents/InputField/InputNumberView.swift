//
//  InputNumberView.swift
//  IColab
//
//  Created by Jeremy Raymond on 07/10/23.
//

import SwiftUI

struct InputNumberView: View {
    var title: String = "Input Nominal"
    @Binding var nominal: Int

    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            HStack {
                TextField(title, value: $nominal, formatter: formatter)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Spacer()
                Button {
                    nominal = 0
                } label: {
                    Image(systemName: "x.circle")
                }
            }
            
            Divider()
                .foregroundColor(.white)
        }
    }
}

#Preview {
    InputNumberView(nominal: .constant(5))
}
