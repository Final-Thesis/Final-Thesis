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
    @EnvironmentObject var pvm : ProfileViewModel
    var profileDetailCardType : ProfileDetailCardType
    var skills : [String]?
    var backgrounds : [Background]?
    var title : String
    
    init(profileDetailCardType: ProfileDetailCardType, accountDetail: AccountDetail, title: String) {
        self.profileDetailCardType = profileDetailCardType
        self.title = title
        if title == "Experience" {
            backgrounds = accountDetail.experiences
        }else if title == "Education"{
            backgrounds = accountDetail.educations
        }else {
            skills = accountDetail.skills
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                switch profileDetailCardType {
                case .horizontal:
                    NavigationLink {
                        EditView(backgroundType: .skill, skills: skills)
                            .environmentObject(pvm)
                    } label: {
                        Image(systemName: "pencil")
                    }

                case .vertical:
                    NavigationLink{
                        if backgrounds is [Education] {
                            EditView(backgroundType: .education, backgrounds: backgrounds)
                                .environmentObject(pvm)
                        }else {
                            EditView(backgroundType: .experience, backgrounds: backgrounds)
                                .environmentObject(pvm)
                        }
                    } label: {
                        Image(systemName: "pencil")
                    }
                    
                }
            }
            switch profileDetailCardType {
            case .horizontal:
                HStack{
                    ForEach(skills ?? [], id: \.self){ skill in
                        TagItem(tagText: skill)
                    }
                    Spacer()
                }
            case .vertical:
                ForEach(backgrounds ?? [], id: \.self){ background in
                    ExperienceDetailView(background: background, editMode: false)
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
        NavigationStack{
            ProfileDetailCard(profileDetailCardType: .horizontal, accountDetail: Mock.accountDetails[0], title: "Skills")
            ProfileDetailCard(profileDetailCardType: .vertical, accountDetail: Mock.accountDetails[0], title: "Experience")
        }
    }
}
