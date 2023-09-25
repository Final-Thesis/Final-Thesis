//
//  NewFormView.swift
//  IColab
//
//  Created by Kevin Dallian on 25/09/23.
//

import SwiftUI

struct NewFormView: View {
    @EnvironmentObject var pvm : ProfileViewModel
    @State var editedBackground : Background
    var backgroundType : BackgroundType
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(backgroundType : BackgroundType) {
        if backgroundType == .education {
            self._editedBackground = State(initialValue: Education(title: "", company: "", startDate: Date.now, endDate: Date.now, desc: ""))
        }
        else {
            self._editedBackground = State(initialValue: Experience(title: "", company: "", startDate: Date.now, endDate: Date.now, desc: ""))
        }
        self.backgroundType = backgroundType
    }
    

    var body: some View {
        VStack(spacing: 10){
            if backgroundType == .experience {
                FormTextField(title: "Experience Title", textField: $editedBackground.title)
                FormTextField(title: "Company", textField: $editedBackground.company)
                FormTextField(title: "Description", textField: $editedBackground.desc)
                FormDatePicker(title: "Start Date", date: $editedBackground.startDate)
                FormDatePicker(title: "End Date", date: $editedBackground.endDate)
            }else if backgroundType == .education{
                FormTextField(title: "School", textField: $editedBackground.title)
                FormTextField(title: "Degree", textField: $editedBackground.company)
                FormTextField(title: "Field of Study", textField: $editedBackground.desc)
                FormDatePicker(title: "Start Date", date: $editedBackground.startDate)
                FormDatePicker(title: "End Date", date: $editedBackground.endDate)
            }
            
            Spacer()
            ButtonComponent(title: "Save", width: 300) {
                pvm.addBackground(background: editedBackground)
                self.presentationMode.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal, 20)
        .padding(.top, 100)
    }
}

#Preview {
    NewFormView(backgroundType: .education)
}
