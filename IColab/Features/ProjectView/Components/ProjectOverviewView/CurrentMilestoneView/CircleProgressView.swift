//
//  CircleProgressView.swift
//  IColab
//
//  Created by Jeremy Raymond on 24/09/23.
//

import SwiftUI

struct CircleProgressView: View {
    var progress: Double = 0.75
    var lineWidth: CGFloat = 10
    
    var body: some View {
        let clampedProgress = min(max(progress, 0), 1)
        
        VStack {
            ZStack {
                Circle()
                    .stroke(
                        Color.purple.opacity(0.5),
                        lineWidth: lineWidth
                    )
                Circle()
                    .trim(from: 0, to: clampedProgress)
                    .stroke(
                        Color.purple,
                        style: StrokeStyle(
                            lineWidth: lineWidth,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(0))
                    .animation(.easeOut, value: clampedProgress)
                
                Text("\(clampedProgress * 100, specifier: "%.0f")")
                    .font(.title3)
                    .bold()
            }
        }
        
    }
    
}

struct CircleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressView()
    }
}
