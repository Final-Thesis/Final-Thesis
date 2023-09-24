//
//  ProfileDetailCard.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ProfileDetailCard: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var backgroundType : BackgroundType
    var skills : [String]?
    var backgrounds : [Background]?
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(backgroundType.rawValue)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                switch backgroundType {
                case .skill:
                    NavigationLink {
                        EditView(backgroundType: .skill)
                            .environmentObject(pvm)
                    } label: {
                        Image(systemName: "pencil")
                    }
                case .education:
                    NavigationLink{
                        EditView(backgroundType: .education)
                            .environmentObject(pvm)
                    } label: {
                        Image(systemName: "pencil")
                    }
                case .experience:
                    NavigationLink{
                        EditView(backgroundType: .experience)
                            .environmentObject(pvm)
                    } label: {
                        Image(systemName: "pencil")
                    }
                }
            }
            switch backgroundType {
            case .skill:
                HStack{
                    ForEach(skills ?? [], id: \.self){ skill in
                        TagItem(tagText: skill)
                    }
                    Spacer()
                }
            default:
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
            ProfileDetailCard(backgroundType: .skill)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            ProfileDetailCard(backgroundType: .education)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
        }
    }
}
