//
//  ProfileDetailCard.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ProfileDetailCard: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @State var showAlert = false
    var backgroundType : BackgroundType
    var skills : [String]?
    var backgrounds : [Background]?
    var editMode : Bool
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(backgroundType.rawValue)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                if editMode{
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
            }
            switch backgroundType {
            case .skill:
                if let skills = self.skills {
                    if skills.isEmpty{
                        Text("No Skills listed...")
                    }else {
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(skills, id: \.self){ skill in
                                    TagItem(tagText: skill)
                                }
                            }
                            Spacer()
                        }
                    }
                }
            default:
                if let backgrounds = self.backgrounds {
                    if backgrounds.isEmpty{
                        Text("No Backgrounds listed...")
                            .font(.caption)
                    }else{
                        ForEach(backgrounds, id: \.self){ background in
                            ExperienceDetailView(showAlert: $showAlert, background: background, editMode: false)
                        }
                    }
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
            ProfileDetailCard(backgroundType: .skill, editMode: false)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            ProfileDetailCard(backgroundType: .education, editMode: true)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
        }
    }
}
