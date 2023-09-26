//
//  SkillEditView.swift
//  IColab
//
//  Created by Kevin Dallian on 27/09/23.
//

import SwiftUI

struct SkillEditView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    var string : String
    var body: some View {
        HStack{
            Text(string)
            Spacer()
            Button {
                pvm.deleteSkills(skill: string)
            } label: {
                Image(systemName: "trash")
            }.buttonStyle(.plain)
            
            Button{
                print("edit")
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
    SkillEditView(string: "String")
        .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
}
