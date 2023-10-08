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
    var backgroundType : BackgroundType
    var index : Int
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    init(background : Background, index : Int){
        self.index = index
        if background is Experience {
            self._editedBackground = State(initialValue: Experience(copyFrom: background))
            self.backgroundType = .experience
        }else{
            self._editedBackground = State(initialValue: Education(copyFrom: background))
            self.backgroundType = .education
        }
    }
    
    var body: some View {
        ZStack{
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
                    pvm.saveBackground(background: editedBackground, index: self.index)
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 20)
            .padding(.top, 100)
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    print("Add")
                } label: {
                    Image(systemName: "plus")
                }.buttonStyle(.plain)
            }
        }
    }
}

struct EditFormView_Previews: PreviewProvider {
    static var previews: some View {
        EditFormView(background: MockAccountDetails.array[0].educations[0], index: 1)
            .environmentObject(ProfileViewModel(uid: Mock.accounts[0].id))
            .environmentObject(NavigationManager())
    }
}
