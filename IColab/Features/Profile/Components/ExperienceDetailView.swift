//
//  ExperienceDetailView.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ExperienceDetailView: View {
    
    var body: some View {
        HStack(spacing: 15){
            Image("purple")
                .resizable()
                .frame(width: 48, height: 92)
                .cornerRadius(12)
            VStack(alignment: .leading){
                Text("Experience Title")
                    .fontWeight(.bold)
                Text("Experience Company")
                    .font(.subheadline)
                Text("\(Date.now.formatted(date: .abbreviated, time: .omitted)) - \(Date.now.formatted(date: .abbreviated, time: .omitted))")
                    .font(.caption)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    .font(.caption)
            }
        }
    }
}

struct ExperienceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceDetailView()
    }
}
