//
//  OnboardingView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                OnboardingInfoView()
                    .tag(0)
                OnboardingInfoView()
                    .tag(1)
                OnboardingInfoView()
                    .tag(2)
            }
            .frame(maxHeight: 240)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentIndex)
            
            DotIndicator(numberOfDots: 3, currentIndex: currentIndex)
                .padding(.top, 16)
            
            ButtonComponent(title: "Next", width: 320) {
                currentIndex += 1
            }
        }
        .padding()
        
    }
}

#Preview {
    OnboardingView()
        .preferredColorScheme(.dark)
}


