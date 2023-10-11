//
//  OnboardingView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentIndex = 0
    @State private var nextView = false
    
    var body: some View {
        NavigationStack{
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
                if currentIndex < 2 {
                    ButtonComponent(title: "Next", width: 320) {
                        currentIndex += 1
                    }
                }else{
                    ButtonComponent(title: "Login", width: 320) {
                        nextView.toggle()
                    }
                }
                
            }
            .padding()
            .navigationDestination(isPresented: $nextView) {
                LoginView()
            }
        }
        .accentColor(.primary)
    }
}

#Preview {
    OnboardingView()
        .preferredColorScheme(.dark)
}


