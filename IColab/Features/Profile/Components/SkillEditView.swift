//
//  SkillEditView.swift
//  IColab
//
//  Created by Kevin Dallian on 27/09/23.
//

import SwiftUI

struct SkillEditView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var skill : String
    var body: some View {
        HStack{
            Text(skill)
            Spacer()
            Button {
                pvm.deleteSkills(skill: skill)
            } label: {
                Image(systemName: "trash")
                    .foregroundStyle(.gray)
            }.buttonStyle(.plain)
            
            NavigationLink {
                EditSkillFormView(skill: skill, index: pvm.getSkillIndex(skill: skill))
                    .environmentObject(pvm)
            } label: {
                Image(systemName: "pencil")
            }.buttonStyle(.plain)
            
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .cornerRadius(12)
    }
}

#Preview {
    SkillEditView(skill: "String")
        .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
}
