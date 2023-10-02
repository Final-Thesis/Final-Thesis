//
//  OnboardingInfoView.swift
//  IColab
//
//  Created by Brandon Nicolas Marlim on 10/2/23.
//

import SwiftUI

struct OnboardingInfoView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.3.fill")
                .font(.system(size: 92))
            Text("Find Collaborators")
                .font(.largeTitle)
                .bold()
            Text("Find like-minded people to share your project together and overcome your development blockers")
                .font(.body)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    OnboardingInfoView()
}
