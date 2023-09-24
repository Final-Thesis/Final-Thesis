//
//  EditFormView.swift
//  IColab
//
//  Created by Kevin Dallian on 21/09/23.
//

import SwiftUI

struct EditFormView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @State var editedBackground : Background
    @State var textfieldText = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(background : Background){
        if background is Experience {
            self._editedBackground = State(initialValue: Experience(copyFrom: background))
        }else{
            self._editedBackground = State(initialValue: Education(copyFrom: background))
        }
    }

    var body: some View {
        VStack(spacing: 10){
            if editedBackground is Experience {
                FormTextField(title: "Experience Title", textField: $editedBackground.title)
                FormTextField(title: "Company", textField: $editedBackground.company)
                FormTextField(title: "Description", textField: $editedBackground.desc)
                FormDatePicker(title: "Start Date", date: $editedBackground.startDate)
                FormDatePicker(title: "End Date", date: $editedBackground.endDate)
            }else{
                FormTextField(title: "School", textField: $editedBackground.title)
                FormTextField(title: "Degree", textField: $editedBackground.company)
                FormTextField(title: "Field of Study", textField: $editedBackground.desc)
                FormDatePicker(title: "Start Date", date: $editedBackground.startDate)
                FormDatePicker(title: "End Date", date: $editedBackground.endDate)
            }
            
            Spacer()
            ButtonComponent(title: "Save", width: 300) {
                pvm.editBackground(background: editedBackground)
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal, 20)
        .padding(.top, 100)
    }
}

struct EditFormView_Previews: PreviewProvider {
    static var previews: some View {
        EditFormView(background: Mock.accountDetails[0].educations[0])
            .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            .environmentObject(NavigationManager())
    }
}
