//
//  ExperienceDetailView.swift
//  IColab
//
//  Created by Kevin Dallian on 12/09/23.
//

import SwiftUI

struct ExperienceDetailView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var background : Background
    var editMode : Bool
    var body: some View {
        HStack(spacing: 15){
            Image("purple")
                .resizable()
                .frame(width: 48, height: 92)
                .cornerRadius(12)
            VStack(alignment: .leading){
                HStack{
                    Text(background.title)
                        .fontWeight(.bold)
                    if editMode {
                        Spacer()
                        Button{
                            pvm.deleteBackground(background: background)
                        } label: {
                            Image(systemName: "trash")
                        }.buttonStyle(.plain)
                        Button {
                            print("Edit")
                        } label: {
                            Image(systemName: "pencil")
                        }.buttonStyle(.plain)
                    }
                }
                Text(background.company)
                    .font(.subheadline)
                Text("\(background.startDate.formatted(date: .abbreviated, time: .omitted)) - \(background.endDate.formatted(date: .abbreviated, time: .omitted))")
                    .font(.caption)
                Text(background.desc)
                    .font(.caption)
            }
        }
    }
}

struct ExperienceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ExperienceDetailView(background: Mock.accountDetails[0].experiences[0], editMode: false)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            ExperienceDetailView(background: Mock.accountDetails[0].experiences[0], editMode: true)
                .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
        }
        
    }
}
