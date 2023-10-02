//
//  PortofolioCard.swift
//  IColab
//
//  Created by Kevin Dallian on 02/10/23.
//

import SwiftUI

struct PortofolioCard: View {
    var project : Project
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Image(.purple)
                .resizable()
                .frame(height: 125)
            Text(project.title)
                .padding(.horizontal, 10)
            HStack(spacing: 5){
                Image(systemName: "photo.fill")
                Text("2")
                    .font(.caption)
                    
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
        }
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

#Preview {
    PortofolioCard(project: Mock.projects[0])
}
