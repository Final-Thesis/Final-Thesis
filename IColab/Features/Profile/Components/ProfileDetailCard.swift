//
//  ProfileDetailCard.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

enum ProfileDetailCardType{
    case horizontal
    case vertical
}

struct ProfileDetailCard: View {
    var profileDetailCardType : ProfileDetailCardType
    var title : String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
            switch profileDetailCardType {
            case .horizontal:
                HStack{
                    TagItem(tagText: "Skill")
                    TagItem(tagText: "Skill")
                    TagItem(tagText: "Skill")
                    Spacer()
                }
            case .vertical:
                ForEach(0..<2, id:\.self){ _ in 
                    ExperienceDetailView()
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

struct ProfileDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ProfileDetailCard(profileDetailCardType: .horizontal, title: "Skills")
            ProfileDetailCard(profileDetailCardType: .vertical, title: "Experience")
        }
    }
}
