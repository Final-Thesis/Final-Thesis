//
//  EditSkillFormView.swift
//  IColab
//
//  Created by Kevin Dallian on 27/09/23.
//

import SwiftUI

struct EditSkillFormView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @State var skill : String
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var index : Int

    var body: some View {
        VStack{
            Spacer()
            FormTextField(title: "Skill", textField: $skill)
            Spacer()
            ButtonComponent(title: "Save", width: 300) {
                pvm.editSkills(skill: skill, index: index)
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Edit Profile")
    }
}

#Preview {
    NavigationStack{
        EditSkillFormView(skill: "Skill", index: 0)
            .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
    }
    
}
