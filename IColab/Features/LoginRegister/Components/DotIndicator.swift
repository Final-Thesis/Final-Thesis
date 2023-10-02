//
//  DotIndicator.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct DotIndicator: View {
    var numberOfDots: Int = 3
    var currentIndex: Int = 0

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfDots, id: \.self) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(index == currentIndex ? .purple : .gray)
            }
        }
    }
}

#Preview {
    DotIndicator()
}
