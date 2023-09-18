//
//  ExperienceDetailView.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ExperienceDetailView: View {
    var background : Background
    var body: some View {
        HStack(spacing: 15){
            Image("purple")
                .resizable()
                .frame(width: 48, height: 92)
                .cornerRadius(12)
            VStack(alignment: .leading){
                Text(background.title)
                    .fontWeight(.bold)
                Text(background.company)
                    .font(.subheadline)
                Text("\(background.startDate.formatted(date: .abbreviated, time: .omitted))) - \(background.endDate.formatted(date: .abbreviated, time: .omitted))")
                    .font(.caption)
                Text(background.desc)
                    .font(.caption)
            }
        }
    }
}

struct ExperienceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExperienceDetailView(background: Mock.accountDetails[0].experiences[0])
    }
}
